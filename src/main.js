import './assets/main.css';
import 'primeicons/primeicons.css';

import { createApp } from 'vue';

import App from './App.vue';
import router from './router';
import pinia from './store';
import PrimeVue from 'primevue/config';
import Aura from '@primevue/themes/aura';

import ConfirmationService from 'primevue/confirmationservice';
import DialogService from 'primevue/dialogservice';
import ToastService from 'primevue/toastservice';

const app = createApp(App);

app.use(router);
app.use(pinia);

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
