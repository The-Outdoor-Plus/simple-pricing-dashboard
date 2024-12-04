import { defineStore } from 'pinia';

export const useAppStore = defineStore('app', {
  state: () => {
    return {
      loading: false,
    };
  },
  actions: {
    setLoading(loading) {
      this.loading = loading;
    },
  },
  getters: {
    isLoading(state) {
      return state.loading;
    },
  },
});
