import { defineStore } from 'pinia';

export const useAppStore = defineStore('app', {
  state: () => {
    return {
      loading: false,
      showSidebar: false,
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
  },
  getters: {
    isLoading(state) {
      return state.loading;
    },
  },
});
