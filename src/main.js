import './assets/main.css';
import 'primeicons/primeicons.css';

import { createApp } from 'vue';

import App from './App.vue';
import router from './router';
import pinia from './store';
import PrimeVue from 'primevue/config';
import Aura from '@primevue/themes/aura';
import VueKonva from 'vue-konva';
import * as Sentry from '@sentry/vue';
import ConfirmationService from 'primevue/confirmationservice';
import DialogService from 'primevue/dialogservice';
import ToastService from 'primevue/toastservice';

const customEnvironment = import.meta.env.VITE_ENVIRONMENT;
const windowDomain = window.location.hostname;
const localDivision = import.meta.env.VITE_LOCAL_DIVISION;

let division = '';

if (customEnvironment === 'local') {
  if (localDivision) division = localDivision;
} else {
  if (windowDomain.includes('portal.videlusa.com') || windowDomain.includes('portal-videlusa')) {
    division = 'Videl USA';
  } else if (
    windowDomain.includes('portal.theoutdoorplus.com') ||
    windowDomain.includes('portal.topfires.com') ||
    windowDomain.includes('portal-topfires')
  ) {
    division = 'The Outdoor Plus';
  }
}

const app = createApp(App);

app.use(router);
app.use(pinia);

app.provide('projectDivision', division);

app.use(VueKonva);

app.use(PrimeVue, {
  theme: {
    preset: Aura,
    options: {
      prefix: 'p',
      darkModeSelector: false || 'none',
      cssLayer: false,
    },
  },
});

app.use(ConfirmationService);
app.use(ToastService);
app.use(DialogService);

app.mount('#app');

Sentry.init({
  app,
  dsn: import.meta.env.VITE_SENTRY_DSN,
  environment: import.meta.env.VITE_COOLIFY_ENV,
  integrations: [Sentry.browserTracingIntegration({ router }), Sentry.replayIntegration()],
  // Performance Monitoring
  tracesSampleRate: 1.0, // Capture 100% of the transactions, reduce in production
  // Set 'tracePropagationTargets' to control for which URLs distributed tracing will be enabled
  tracePropagationTargets: [
    /^https:\/\/portal\.videlusa\.com/,
    /^https:\/\/portal\.theoutdoorplus\.com/,
    /^https:\/\/portal\.topfires\.com/,
  ],
  replaysSessionSampleRate: 0.1,
  replaysOnErrorSampleRate: 1.0,
});
