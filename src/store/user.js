import { defineStore } from 'pinia';
import { supabase } from '../supabase';
import { useCartStore } from './cart'; // Assuming the cart store is in the same directory

export const useUserStore = defineStore('user', {
  state: () => {
    let token = null;
    let user = null;
    let session = null;
    let company = null;
    const supabaseId = import.meta.env.VITE_SUPABASE_ID;
    const storeData = localStorage.getItem(`sb-${supabaseId}-auth-token`);
    if (storeData) {
      const data = JSON.parse(storeData);
      const today = new Date();
      const expiry = new Date(data?.expires_at * 1000);
      if (expiry.getTime() > today.getTime()) {
        user = data?.user;
        session = data;
        token = `${data.token_type} ${data.access_token}`;
      } else {
        supabase.auth.signOut();
      }
    }

    return {
      token,
      user,
      session,
      company,
    };
  },
  actions: {
    async setUser(user) {
      this.user = user;
    },
    async setSession(session) {
      this.session = session;
      this.token = `${session.token_type} ${session.access_token}`;
    },
    async setCompany(company) {
      this.company = company;
    },
    async sucessfullLogin(user, session) {
      await this.setUser(user);
      await this.setSession(session);
    },
    async logout() {
      const { error } = await supabase.auth.signOut();
      if (error) throw error;
      this.user = null;
      this.session = null;
      this.token = null;
      this.company = null;
      // Reset cart on logout
      const cartStore = useCartStore();
      cartStore.resetCart();
    },
    async loadUserCompany() {
      if (this.user?.user_metadata?.company) {
        const { data, error } = await supabase
          .from('Company')
          .select('id, name, logo, role')
          .eq('id', this.user.user_metadata.company);
        if (error) throw error;
        this.setCompany(data[0]);
      }
    },
  },
  getters: {
    currentUser: (state) => {
      return {
        ...state.user,
        ...state.user?.user_metadata,
      };
    },
    isUserAuthenticated(state) {
      return !!state.session;
    },
    currentRole: (state) => {
      return state?.user?.user_metadata?.role;
    },
    currentCompanyRole: (state) => {
      return state?.company?.role;
    },
    currentCompany: (state) => {
      return state?.company;
    },
  },
});
