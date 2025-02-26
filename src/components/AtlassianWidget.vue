<template>
  <div v-if="isAuthenticated" class="atlassian-widget-container">
    <!-- This div will be the container for the Jira Service Desk widget -->
    <div id="jsd-widget-container"></div>
  </div>
</template>

<script setup>
import { onMounted, ref, watch, onBeforeUnmount, onUnmounted, nextTick } from 'vue';
import { useUserStore } from '../store/user';
import { useRouter } from 'vue-router';

const userStore = useUserStore();
const router = useRouter();
const isAuthenticated = ref(userStore.isUserAuthenticated);
const observer = ref(null);

// Watch for authentication changes
watch(() => userStore.isUserAuthenticated, (newValue) => {
  if (!newValue) {
    // Remove the widget when user logs out
    cleanupWidget();
  }
}, { immediate: true });


const setNativeValue = (element, value) => {
  const previousValue = element.value;

  if (element.type === 'checkbox' || element.type === 'radio') {
    if ((!!value && !element.checked) || (!!!value && element.checked)) {
      element.click();
    }
  } else element.value = value;

  const tracker = element._valueTracker;
  if (tracker) {
    tracker.setValue(previousValue);
  }

  element.dispatchEvent(new Event('change', { bubbles: true }));
}
// Function to clean up the widget
const cleanupWidget = () => {
  // Remove any iframe created by the widget
  const existingIframe = document.querySelector('iframe[id^="jsd-widget"]');
  if (existingIframe) {
    existingIframe.style.pointerEvents = 'none';
    existingIframe.style.display = 'none';
  }
  // const existingIframe = document.querySelector('iframe[id^="jsd-widget"]');
  // if (existingIframe) {
  //   existingIframe.parentElement.removeChild(existingIframe);
  // }

  // // Remove the dynamic script
  // const existingScript = document.getElementById('jsd-widget-script-dynamic');
  // if (existingScript) {
  //   existingScript.parentElement.removeChild(existingScript);
  // }
};

const initWidget = () => {
  const existingIframe = document.querySelector('iframe[id^="jsd-widget"]');
  if (existingIframe && isAuthenticated.value) {
    existingIframe.style.pointerEvents = 'auto';
    existingIframe.style.display = 'block';
    existingIframe.style.position = 'fixed';
    existingIframe.style.bottom = '10px';
    existingIframe.style.right = '5px';
    existingIframe.style.width = '80px';
    existingIframe.style.height = '70px';

  }
}

const observeIframe = (iframe) => {
  try {
    const iframeDoc = iframe.contentDocument || iframe.contentWindow.document;

    const widgetContainer = iframeDoc.body;

    if (!widgetContainer) return;

    const observerCallback = (mutationsList) => {
      for (const mutation of mutationsList) {
        console.log('Mutation:', mutation);
        if (mutation.type === 'childList') {
          const form = iframeDoc.querySelector('.help-form');
          if (!form) return;
          const emailField = form.querySelector('input[id="email"]');
          if (emailField) {
            setNativeValue(emailField, userStore.user.email);
            emailField.style.pointerEvents = 'none';
            emailField.setAttribute('readonly', 'true');
          }
        }
      }
    }

    observer.value = new MutationObserver(observerCallback);

    observer.value.observe(widgetContainer, { childList: true, subtree: true });
  } catch (error) {
    console.error('Error observing iframe:', error);
  }
}

onMounted(() => {
  initWidget();

  const checkIFrame = setInterval(() => {
    const iframe = document.querySelector('iframe[id^="jsd-widget"]');
    if (iframe && iframe.contentDocument) {
      clearInterval(checkIFrame);
      observeIframe(iframe);
    }
  }, 600);
});

onBeforeUnmount(() => {
  if (observer.value) {
    observer.value.disconnect();
  }
  cleanupWidget();
});

onUnmounted(() => {
  cleanupWidget();
});
</script>

<style scoped>
.atlassian-widget-container {
  position: relative;
  z-index: 1000;
  /* Ensure the widget appears above other elements */
}
</style>
