import { useAppStore } from '@/store/app';
import { supabase } from '@/supabase';
import { useRouter } from 'vue-router';
import { useToast } from 'primevue';

export function useRfq() {
  const appStore = useAppStore();
  const router = useRouter();
  const toast = useToast();

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

  return {
    getRfqNumber,
  };
}
