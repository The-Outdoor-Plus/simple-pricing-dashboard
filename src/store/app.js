import { supabase } from '@/supabase';
import { defineStore } from 'pinia';
import { useToast } from 'primevue/usetoast';

export const useAppStore = defineStore('app', {
  state: () => {
    return {
      loading: false,
      showSidebar: false,
      enums: [],
    };
  },
  actions: {
    setLoading(loading) {
      this.loading = loading;
    },
    toggleSidebar() {
      this.showSidebar = !this.showSidebar;
    },
    closeSidebar() {
      this.showSidebar = false;
    },
    openSidebar() {
      this.showSidebar = true;
    },
    async loadEnums() {
      const toast = useToast();
      try {
        this.setLoading(true);
        const { data, error } = await supabase.from('enums').select('*');
        if (error) throw error;
        this.enums = data;
      } catch (error) {
        console.error('Error loading enums:', error);
        toast.add({
          severity: 'error',
          summary: 'Error loading enums',
          detail: 'An error occurred while loading enums',
        });
      } finally {
        this.setLoading(false);
      }
    },
  },
  getters: {
    isLoading(state) {
      return state.loading;
    },
    getEnumsByType: (state) => {
      return (enum_type) =>
        state.enums
          .filter((enm) => enm.type === enum_type)
          .sort((a, b) => a.num_identifier - b.num_identifier);
    },
  },
});
