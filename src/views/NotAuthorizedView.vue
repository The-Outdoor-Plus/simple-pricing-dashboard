<template>
  <div class="not-authorized-container">
    <div class="not-authorized-card">
      <div class="not-authorized-icon">
        <i class="pi pi-lock text-6xl text-red-500"></i>
      </div>
      <h1 class="text-3xl font-bold mb-4">Access Denied</h1>
      <p class="text-lg mb-3">
        You don't have permission to access this page. Please contact your administrator if you believe this is an
        error.
      </p>
      <div v-if="route.query.from" class="text-left p-3 bg-gray-100 rounded-lg mb-6">
        <p class="text-sm text-gray-700 mb-1">
          <strong>Requested page:</strong> {{ formatPath(route.query.from) }}
        </p>
        <p class="text-sm text-gray-700">
          <strong>Your role:</strong> {{ formatRole(route.query.role) }}
        </p>
      </div>
      <div class="flex gap-3">
        <Button label="Go Home" icon="pi pi-home" @click="goHome" class="p-button-primary" />
        <Button label="Go Back" icon="pi pi-arrow-left" @click="goBack" class="p-button-outlined" />
        <Button v-if="userStore.session && userStore.token" label="Logout" icon="pi pi-sign-out" @click="logout"
          class="p-button-danger" />
      </div>
    </div>
  </div>
</template>

<script setup>
import { useRouter, useRoute } from 'vue-router';
import { useUserStore } from '@/store/user';

const router = useRouter();
const route = useRoute();
const userStore = useUserStore();

const goHome = () => {
  router.push('/');
};

const goBack = () => {
  router.back();
};

const logout = async () => {
  await userStore.logout();
  router.replace('/login');
};

const formatPath = (path) => {
  return path || 'Unknown';
};

const formatRole = (role) => {
  if (!role || role === 'unknown') return 'No role assigned';

  // Convert SNAKE_CASE to Title Case with spaces
  return role
    .split('_')
    .map(word => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join(' ');
};
</script>

<style scoped>
.not-authorized-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 80vh;
  padding: 2rem;
}

.not-authorized-card {
  max-width: 600px;
  padding: 3rem;
  border-radius: 8px;
  background-color: white;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.not-authorized-icon {
  margin-bottom: 1.5rem;
}
</style>
