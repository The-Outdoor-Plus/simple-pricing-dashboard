import { useAppStore } from '@/store/app';
import { supabase } from '@/supabase';
import { useRouter } from 'vue-router';
import { useToast } from 'primevue';
import html2pdf from 'html2pdf.js';
import { ref } from 'vue';
import { useUserStore } from '@/store/user';

const rfqEmail = ref(null);

export function useRfq() {
  const appStore = useAppStore();
  const router = useRouter();
  const toast = useToast();
  const userStore = useUserStore();

  const getInitials = (sentence) => {
    return sentence
      .split(' ')
      .map((word) => word.charAt(0).toUpperCase(0))
      .join('');
  };

  const formatRfqNumber = (num) => {
    return num.toString().padStart(5, '0');
  };

  const extractNumber = (text) => {
    const match = text.match(/\d+/);
    return match ? Number(match[0]) : null;
  };

  const getRfqNumber = async (companyName, userName) => {
    try {
      appStore.setLoading(true);
      const { data, error } = await supabase
        .from('rfq')
        .select('rfq_number')
        .order('created_at', { ascending: false })
        .limit(1);
      if (error) throw error;
      console.log(data);
      let num = 2011;
      if (data.length) {
        const lastRfqNumber = data[0]?.rfq_number || '';
        const lastNum = extractNumber(lastRfqNumber);
        if (lastNum) num = lastNum + 1;
      }
      return `RFQ-${getInitials(companyName)}${getInitials(userName)}${formatRfqNumber(num)}`;
    } catch (e) {
      console.error(e);
      toast.add({
        severity: 'error',
        summary: 'Error generating RFQ Form',
        detail: e?.message || 'Something went wrong. Please contact TOP Support',
        life: 3000,
      });
      router.push('/cart');
    } finally {
      appStore.setLoading(false);
    }
  };

  const postRfqActivityUpdate = async (
    rfqId,
    action_text,
    user_id = undefined,
    user_name = undefined,
    user_initials = undefined,
    avatar = undefined,
    user_type = undefined,
  ) => {
    try {
      const update = {
        update_id: crypto.randomUUID(),
        user_id: user_id === undefined ? userStore.currentUser.id : user_id,
        user_name:
          user_name === undefined
            ? `${userStore.currentUser.first_name} ${userStore.currentUser.last_name}`
            : user_name,
        user_initials:
          user_initials === undefined
            ? `${userStore.currentUser.first_name.charAt(0)}${userStore.currentUser.last_name.charAt(0)}`
            : user_initials,
        avatar: avatar === undefined ? userStore.currentUser.avatar_url : avatar,
        action_text: action_text,
        created_at: new Date().toISOString(),
        user_type: user_type || (userStore.isAgent ? 'AGENT' : 'CUSTOMER'),
      };

      const { data, error } = await supabase.from('rfq').select('updates').eq('id', rfqId).single();
      if (error) throw error;

      if (data && data.updates) {
        const { e } = await supabase
          .from('rfq')
          .update({
            updates: [...data.updates, update],
          })
          .eq('id', rfqId);

        if (e) throw e;
      }
    } catch (error) {
      console.error('Error posting RFQ activity update:', error);
    }
  };

  const calculateTotal = (rfqItems) => {
    if (!rfqItems) return '$0.00';
    const total = rfqItems.reduce((sum, item) => sum + item.price * item.quantity, 0);
    return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(total);
  };

  const replaceBlockItems = (block, toReplace, replaceWith) => {
    block.data.props.text = block?.data?.props?.text?.replace(toReplace, replaceWith);
    return block;
  };

  const loadRFQEmail = async () => {
    try {
      const { data, error } = await supabase
        .from('emails')
        .select('html, name')
        .ilike('name', `%RFQ%`)
        .single();

      if (error) throw error;
      rfqEmail.value = data;
    } catch (error) {
      console.error('Error loading RFQ Email:', error);
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: 'Failed to load RFQ Email',
        life: 3000,
      });
    }
  };

  const constructHtml2PdfObject = (rfqNumber, element) => {
    // Configure PDF options with proper width handling
    const opt = {
      margin: [15, 15, 15, 15],
      filename: `RFQ-${rfqNumber}.pdf`.replace(/^(RFQ-)+/, 'RFQ-'),
      image: { type: 'png', quality: 0.98 },
      html2canvas: {
        scale: 2,
        useCORS: true,
        letterRendering: true,
        width: 794, // A4 width in pixels
        windowWidth: 794,
      },
      jsPDF: {
        unit: 'mm',
        format: 'a4',
        orientation: 'portrait',
        compress: true,
      },
    };

    element.style.transform = 'none';
    element.style.width = '794px';
    element.style.margin = '0';
    element.style.padding = '40px';

    // Force layout recalculation
    element.offsetHeight;

    return html2pdf().from(element).set(opt);
  };

  const prepareRfqEmail = (
    rfqCompanyInformation,
    rfqPurchaseOrder,
    rfqItems,
    rfqNumber,
    rfqId,
    customerName,
    emailJson,
  ) => {
    const parsedEmailJson = JSON.parse(emailJson);

    const baseKeys = [
      'block-full_item_container_1',
      'block-item_details_1',
      'block-item_name_1',
      'block-item_price_1',
      'block-item_quantity_1',
      'block-item_sku_1',
    ];

    for (let i = 2; i <= rfqItems.length; i++) {
      const newKeys = {};

      for (const key of baseKeys) {
        const newKey = key.replace(`_1`, `_${i}`);
        const newObject = JSON.parse(JSON.stringify(parsedEmailJson[key]));
        newKeys[key] = newKey;

        if (newObject.data?.props?.childrenIds) {
          newObject.data.props.childrenIds = newObject.data.props.childrenIds.map((childId) =>
            childId.replace(`_1`, `_${i}`),
          );
        }

        if (newObject?.data?.props?.columns) {
          newObject.data.props.columns = newObject.data.props.columns.map((column) => ({
            ...column,
            childrenIds: column.childrenIds.map((childId) => childId.replace(`_1`, `_${i}`)),
          }));
        }

        let newReplacedObject = newObject;
        if (newKey.includes('block-item_name')) {
          newReplacedObject = replaceBlockItems(newObject, '{{ item.name }}', rfqItems[i - 1].name);
        }
        if (newKey.includes('block-item_sku')) {
          newReplacedObject = replaceBlockItems(newObject, '{{ item.sku }}', rfqItems[i - 1].sku);
        }
        if (newKey.includes('block-item_quantity')) {
          newReplacedObject = replaceBlockItems(
            newObject,
            '{{ item.quantity }}',
            rfqItems[i - 1].quantity,
          );
        }
        if (newKey.includes('block-item_price')) {
          newReplacedObject = replaceBlockItems(
            newObject,
            '{{ item.price }}',
            new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(
              rfqItems[i - 1].price * rfqItems[i - 1].quantity,
            ),
          );
        }
        parsedEmailJson[newKey] = newReplacedObject;
      }

      const childrenIds = parsedEmailJson['block_full_items']?.data?.props?.childrenIds;
      childrenIds.splice(childrenIds.length - 1, 0, newKeys[`block-full_item_container_1`]);
      childrenIds.splice(childrenIds.length - 1, 0, 'block-item-divider');
    }

    parsedEmailJson['block-item_name_1'] = replaceBlockItems(
      parsedEmailJson['block-item_name_1'],
      '{{ item.name }}',
      rfqItems[0].name,
    );
    parsedEmailJson['block-item_sku_1'] = replaceBlockItems(
      parsedEmailJson['block-item_sku_1'],
      '{{ item.sku }}',
      rfqItems[0].sku,
    );
    parsedEmailJson['block-item_quantity_1'] = replaceBlockItems(
      parsedEmailJson['block-item_quantity_1'],
      '{{ item.quantity }}',
      rfqItems[0].quantity,
    );
    parsedEmailJson['block-item_price_1'] = replaceBlockItems(
      parsedEmailJson['block-item_price_1'],
      '{{ item.price }}',
      new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(
        rfqItems[0].price * rfqItems[0].quantity,
      ),
    );

    //Replace customer name
    parsedEmailJson.block_heading.data.props.text =
      parsedEmailJson?.block_heading?.data?.props?.text?.replace(
        '{{ customer.name }}',
        customerName ?? 'N/A',
      );

    //Replace quote number
    parsedEmailJson.block_quote_number.data.props.text =
      parsedEmailJson?.block_quote_number?.data?.props?.text?.replace(
        '{{ rfq_number }}',
        rfqNumber ?? 'N/A',
      );

    //Replace quote link
    parsedEmailJson.block_dashboard_link.data.props.text =
      parsedEmailJson?.block_dashboard_link?.data?.props?.text?.replace(
        '{{ rfq_dashboard_link }}',
        `${window.location.origin}/rfq/${rfqId}`,
      );

    //Replace Company Information
    parsedEmailJson['block-company_information_address'].data.props.text = parsedEmailJson?.[
      'block-company_information_address'
    ]?.data?.props?.text?.replace(
      '{{ company_information.address }}',
      rfqCompanyInformation.address ?? 'N/A',
    );
    parsedEmailJson['block-company_information_city'].data.props.text = parsedEmailJson?.[
      'block-company_information_city'
    ]?.data?.props?.text?.replace(
      '{{ company_information.city }}',
      rfqCompanyInformation.city ?? 'N/A',
    );
    parsedEmailJson['block-company_information_state'].data.props.text = parsedEmailJson?.[
      'block-company_information_state'
    ]?.data?.props?.text?.replace(
      '{{ company_information.state }}',
      rfqCompanyInformation.state ?? 'N/A',
    );
    parsedEmailJson['block-company_information_zip'].data.props.text = parsedEmailJson?.[
      'block-company_information_zip'
    ]?.data?.props?.text?.replace(
      '{{ company_information.zip }}',
      rfqCompanyInformation.zip ?? 'N/A',
    );
    parsedEmailJson['block-company_information_contact'].data.props.text = parsedEmailJson?.[
      'block-company_information_contact'
    ]?.data?.props?.text?.replace(
      '{{ company_information.contact }}',
      rfqCompanyInformation.contact ?? 'N/A',
    );
    parsedEmailJson['block-company_information_name'].data.props.text = parsedEmailJson?.[
      'block-company_information_name'
    ]?.data?.props?.text?.replace(
      '{{ company_information.name }}',
      rfqCompanyInformation.name ?? 'N/A',
    );
    parsedEmailJson['block-company_information_phone'].data.props.text = parsedEmailJson?.[
      'block-company_information_phone'
    ]?.data?.props?.text?.replace(
      '{{ company_information.phone }}',
      rfqCompanyInformation.phone ?? 'N/A',
    );
    parsedEmailJson['block-company_information_email'].data.props.text = parsedEmailJson?.[
      'block-company_information_email'
    ]?.data?.props?.text?.replace(
      '{{ company_information.email }}',
      rfqCompanyInformation.email ?? 'N/A',
    );

    // Replace purchase order
    parsedEmailJson['block-purchase_order_number'].data.props.text = parsedEmailJson?.[
      'block-purchase_order_number'
    ]?.data?.props?.text?.replace('{{ purchaseOrder }}', rfqPurchaseOrder ?? 'N/A');

    // Replace total
    parsedEmailJson.block_total_value.data.props.text =
      parsedEmailJson?.block_total_value?.data?.props?.text?.replace(
        '{{ total }}',
        calculateTotal(rfqItems),
      );

    return parsedEmailJson;
  };

  return {
    getRfqNumber,
    prepareRfqEmail,
    constructHtml2PdfObject,
    loadRFQEmail,
    postRfqActivityUpdate,
    rfqEmail,
  };
}
