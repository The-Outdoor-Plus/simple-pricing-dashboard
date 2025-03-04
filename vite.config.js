import { sentryVitePlugin } from "@sentry/vite-plugin";
import { fileURLToPath, URL } from 'node:url';

import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import vueDevTools from 'vite-plugin-vue-devtools';
import Components from 'unplugin-vue-components/vite';
import { PrimeVueResolver } from '@primevue/auto-import-resolver';

// https://vite.dev/config/
export default defineConfig({
  plugins: [vue(), vueDevTools(), Components({
    resolvers: [PrimeVueResolver()],
  }), sentryVitePlugin({
    org: "the-outdoor-plus",
    project: "top-dealer-portal"
  })],

  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
    },
  },

  server: {
    port: 5173,
  },

  preview: {
    port: 80,
  },

  build: {
    sourcemap: true
  }
});