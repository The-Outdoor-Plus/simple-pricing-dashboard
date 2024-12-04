import { defineStore } from 'pinia'

export const useAuthStore = defineStore('auth', {
  state: () => ({
    token: undefined,
    isLoading: false,
  }),
  actions: {
    logout() {
      this.token = undefined
    },
  },
})
