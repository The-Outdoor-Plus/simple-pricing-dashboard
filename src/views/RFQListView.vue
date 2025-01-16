<template>
  <div class="p-6">
    <div class="mb-6 flex justify-between items-center">
      <h1 class="text-2xl font-semibold">Request For Quotes</h1>
    </div>

    <!-- Status filter -->
    <div class="mb-2 ml-3 font-medium text-lg">
      Filters
    </div>
    <div class="flex gap-4 items-center flex-wrap mb-6">
      <div class="flex flex-col gap-2">
        <label for="status-filter" class="text-sm font-medium ml-2">Filter By Status</label>
        <div clas="flex items-center">
          <Dropdown :options="statuses" v-model="selectedStatus" optionLabel="value" optionValue="value"
            placeholder="Filter By Status" class="status-filter ml-2" />
          <Button v-if="selectedStatus !== 'all'" class=" !text-gray-600" icon="pi pi-times" variant="text" rounded
            aria-label="Filter" severity="contrast" @click="selectedStatus = 'all'" />
        </div>
      </div>
      <div v-if="userStore.isAgent" class="flex flex-col gap-2">
        <label for="company-filter" class="text-sm font-medium ml-2">Filter By Company</label>
        <div clas="flex items-center">
          <Autocomplete :suggestions="filteredCompanies" v-model="selectedCompany" optionLabel="name" optionValue="id"
            placeholder="Filter By Company" class="status-filter ml-2" @complete="searchCompanies" dropdown
            @option-select="onCompanySelect">
            <template #option="slotProps">
              <span v-html="highlightMatch(slotProps.option.name)"></span>
            </template>
          </Autocomplete>
          <Button v-if="selectedCompany !== ''" class=" !text-gray-600" icon="pi pi-times" variant="text" rounded
            aria-label="Filter" severity="contrast" @click="selectedCompany = ''" />
        </div>
      </div>
    </div>

    <!-- RFQ Table -->
    <DataTable :value="rfqs" :paginator="true" :rows="rows" :loading="loading" stripedRows class="p-datatable-sm"
      paginatorTemplate="FirstPageLink PrevPageLink CurrentPageReport NextPageLink LastPageLink RowsPerPageDropdown"
      currentPageReportTemplate="{first} to {last} of {totalRecords}" :rowsPerPageOptions="[25, 50, 100]"
      :totalRecords="totalRecords" :lazy="true" @page="onPage" dataKey="id" style="width: 100%"
      table-style="min-width: 100%;">
      <Column field="rfq_number" header="RFQ #" sortable>
        <template #body="{ data }">
          <router-link :to="'/rfq/' + data.id" class="text-primary-500 hover:text-primary-700">
            {{ data.rfq_number }}
          </router-link>
        </template>
      </Column>
      <Column field="created_at" header="Created" sortable>
        <template #body="{ data }">
          {{ new Date(data.created_at).toLocaleDateString() }}
        </template>
      </Column>
      <Column field="company_information.name" header="Company" sortable />
      <Column field="purchase_order_number" header="PO #" sortable />
      <Column field="status" header="Status" sortable>
        <template #body="{ data }">
          <div class="px-2 py-1 rounded-md w-fit" :class="[`${getStatusSeverity(data.status)}`]">
            <p class="text-sm font-medium" :class="[`${getStatusColor(data.status)}`]">{{ data.status }}</p>
          </div>
        </template>
      </Column>
      <Column header="">
        <template #body="{ data }">
          <div v-if="getTurn(data.status)?.text" class="px-2 py-1 rounded-md w-fit"
            :class="[`${getTurn(data.status)?.background}`]">
            <p class="text-sm font-medium" :class="[`${getTurn(data.status).color}`]">{{ getTurn(data.status)?.text ||
              '' }}</p>
          </div>
        </template>
      </Column>
      <Column header="Actions">
        <template #body="{ data }">
          <div class="flex gap-2">
            <Button icon="pi pi-eye" text rounded @click="router.push('/rfq/' + data.id)" tooltip="View RFQ" />
          </div>
        </template>
      </Column>
    </DataTable>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, watch } from 'vue';
import { useRouter } from 'vue-router';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';
import { supabase } from '@/supabase';
import Dropdown from 'primevue/dropdown';

const router = useRouter();
const userStore = useUserStore();
const appStore = useAppStore();
const loading = ref(true);
const rfqs = ref([]);
const companies = ref([]);
const selectedStatus = ref('all');
const selectedCompany = ref('');
const filteredCompanies = ref([]);
const eventQuery = ref('');
const totalRecords = ref(0);
const statuses = computed(() => appStore.getEnumsByType('rfq_status'));
const rows = ref(25);

const filteredRfqs = computed(() => {
  return rfqs.value;
});

const getStatusSeverity = (status) => {
  const severityMap = {
    'RFQ Sent': 'bg-cyan-100/90',
    'Working On Estimate': 'bg-yellow-200/70',
    'Invoice Ready / Not Paid': 'bg-red-300/90',
    'Invoice Ready / Paid': 'bg-teal-100/60',
    'Estimate Signed': 'bg-green-300/90',
    'PO Sent': 'bg-green-300/90',
    'Estimate Ready': 'bg-green-300/90',
  };
  return severityMap[status] || 'bg-blue-300/90';
};

const getStatusColor = (status) => {
  const colorMap = {
    'RFQ Sent': 'text-cyan-800',
    'Working On Estimate': 'text-yellow-900',
    'Invoice Ready / Not Paid': 'text-red-900',
    'Invoice Ready / Paid': 'text-teal-900',
    'Estimate Signed': 'text-green-900',
    'PO Sent': 'text-green-900',
    'Estimate Ready': 'text-green-900',
  };
  return colorMap[status] || 'text-blue-800';
};

const getTurn = (status) => {
  const isAgent = userStore.isAgent;

  const agentTurnMap = {
    'RFQ Sent': {
      'text': 'Needs Attention',
      'background': 'bg-purple-100/90',
      'color': 'text-purple-900'
    },
    'Working On Estimate': {
      'text': '',
      'background': '',
      'color': ''
    },
    'Invoice Ready / Not Paid': {
      'text': 'Waiting For Customer',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
    'Invoice Ready / Paid': {
      'text': '',
      'background': '',
      'color': ''
    },
    'Estimate Signed': {
      'text': 'Needs Attention',
      'background': 'bg-purple-100/90',
      'color': 'text-purple-900'
    },
    'PO Sent': {
      'text': 'Needs Attention',
      'background': 'bg-purple-100/90',
      'color': 'text-purple-900'
    },
    'Estimate Ready': {
      'text': 'Waiting For Customer',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
  };

  const customerTurnMap = {
    'RFQ Sent': {
      'text': 'Waiting For Agent',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
    'Working On Estimate': {
      'text': 'Waiting For Agent',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
    'Invoice Ready / Not Paid': {
      'text': 'Missing Payment',
      'background': 'bg-purple-100/90',
      'color': 'text-purple-900'
    },
    'Invoice Ready / Paid': {
      'text': '',
      'background': '',
      'color': ''
    },
    'Estimate Signed': {
      'text': 'Waiting For Agent',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
    'PO Sent': {
      'text': 'Waiting For Agent',
      'background': 'bg-yellow-100/90',
      'color': 'text-yellow-900'
    },
    'Estimate Ready': {
      'text': 'Needs Attention',
      'background': 'bg-purple-100/90',
      'color': 'text-purple-900'
    },
  };

  if (isAgent) {
    return agentTurnMap[status] || '';
  } else {
    return customerTurnMap[status] || '';
  }
};

const searchCompanies = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredCompanies.value = [...companies.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredCompanies.value = companies.value.filter((company) => {
        const companyName = company.name.toLowerCase();
        return queryWords.every(
          (word) => companyName.includes(word),
        );
      });
    }
  }, 250);
};

const highlightMatch = (text) => {
  const queryWords = eventQuery.value.toLowerCase().split(/\s+/); // Split query into words
  let highlightedText = text;

  queryWords.forEach((word) => {
    if (word.trim()) {
      const regex = new RegExp(`(${word})`, 'gi'); // Case-insensitive matching
      highlightedText = highlightedText.replace(regex, '<b>$1</b>');
    }
  });

  return highlightedText;
};



const loadRfqs = async (page = 0, rowsPerPage = 25) => {
  try {
    loading.value = true;
    const query = supabase
      .from('rfq')
      .select('*', { count: 'exact' })
      .order('created_at', { ascending: false });

    if (selectedStatus.value && selectedStatus.value !== 'all') {
      query.eq('status', selectedStatus.value);
    }

    if (selectedCompany.value && selectedCompany.value.id) {
      query.eq('company_id', selectedCompany.value.id);
    }

    const { data, error, count } = await query.range(page * rowsPerPage, (page + 1) * rowsPerPage - 1);

    if (error) throw error;
    rfqs.value = data;
    totalRecords.value = count;
  } catch (error) {
    console.error('Error loading RFQs:', error);
  } finally {
    loading.value = false;
  }
};

// Fetch companies for the form
const fetchCompanies = async () => {
  try {
    const { data, error } = await supabase.from('Company').select('id, name, role');
    if (error) throw error;
    companies.value = data;
  } catch (error) {
    console.error('Error fetching companies:', error);
  }
};

const onCompanySelect = async () => {
  await loadRfqs();
};

const onPage = (event) => {
  loadRfqs(event.page, event.rows);
};

const downloadPdf = async (rfq) => {
  // Implementation for PDF download
  console.log('Downloading PDF for RFQ:', rfq.rfq_number);
};

onMounted(async () => {
  await loadRfqs();
  await fetchCompanies();
});

watch(selectedStatus, async () => {
  if (selectedStatus.value) {
    await loadRfqs();
  }
}, { immediate: true, deep: true });

</script>

<style scoped>
.status-filter {
  &.active {
    @apply bg-primary-500 text-white;
  }
}
</style>
