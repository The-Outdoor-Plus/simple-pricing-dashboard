import { supabase } from '@/supabase';
import { ref } from 'vue';
import { useAppStore } from '@/store/app';

export function useUser() {
  const appStore = useAppStore();
  const allowedDomains = ref(['theoutdoorplus.com', 'videlusa.com']);

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

  const verifyCredentials = async (email, password) => {
    const { data, error } = await supabase.functions.invoke('verify-credentials', {
      body: { email, password },
    });
    if (error) throw new Error('Invalid credentials');
    return data?.success || false;
  };

  const sendOtp = async (email) => {
    const { error } = await supabase.auth.signInWithOtp({
      email,
      options: {
        shouldCreateUser: false,
      },
    });
    if (error) {
      console.error('OTP error', error.message);
      throw error;
    }
  };

  const verifyOtp = async (email, otp) => {
    const { data, error } = await supabase.auth.verifyOtp({
      email,
      token: otp,
      type: 'email',
    });

    if (error) {
      console.error('OTP error', error.message);
      throw error;
    }

    return { user: data.user, session: data.session };
  };

  return {
    loadUserInformation,
    verifyCredentials,
    sendOtp,
    verifyOtp,
    allowedDomains,
  };
}
