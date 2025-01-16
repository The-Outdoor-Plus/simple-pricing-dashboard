import { supabase } from '@/supabase';
import { ref } from 'vue';
import { useAppStore } from '@/store/app';

export function useUser() {
  const appStore = useAppStore();

  const loadUserInformation = async (id, columns = '*') => {
    try {
      appStore.setLoading(true);
      const { data, error } = await supabase.from('users').select(columns).eq('id', id);
      if (error) throw error;
      return data[0];
    } catch (error) {
      console.error(error);
    } finally {
      appStore.setLoading(false);
    }
  };
  return {
    loadUserInformation,
  };
}
