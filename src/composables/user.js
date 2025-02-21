import { supabase } from '@/supabase';
import { ref } from 'vue';
import { useAppStore } from '@/store/app';
import { FunctionsHttpError } from '@supabase/supabase-js';

const allowedDomains = ref(['theoutdoorplus.com', 'videlusa.com']);
const welcomeEmail = ref(null);

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

  const verifyCredentials = async (email, password, division) => {
    const { data, error } = await supabase.functions.invoke('verify-credentials', {
      body: { email, password, division },
    });
    if (error) {
      if (error instanceof FunctionsHttpError) {
        const errorMessage = await error.context.json();
        throw new Error(errorMessage.message, {
          cause: errorMessage.error,
        });
      }
      throw new Error('Invalid credentials');
    }
    return { success: data?.success || false, first_time: data?.first_time || false };
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

  const loadWelcomeEmail = async () => {
    try {
      const { data, error } = await supabase
        .from('emails')
        .select('html, name, type, primary')
        .eq('type', 'Welcome Email')
        .eq('primary', true)
        .single();

      if (error) throw error;
      welcomeEmail.value = data;
    } catch (error) {
      console.error('Error loading Welcome Email:', error);
      toast.add({
        severity: 'error',
        summary: 'Error',
        detail: 'Failed to load Welcome Email',
        life: 3000,
      });
    }
  };

  return {
    loadUserInformation,
    verifyCredentials,
    sendOtp,
    verifyOtp,
    allowedDomains,
    welcomeEmail,
    loadWelcomeEmail,
  };
}
