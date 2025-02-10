<template>
  <main class="w-full container mx-auto min-h-screen">
    <router-view />
    <Toast></Toast>
    <div v-if="appStore.loading"
      class="w-full h-full min-h-screen flex justify-center items-center fixed top-0 left-0 bg-slate-600/10">
      <div class="w-full h-full flex justify-center items-center">
        <ProgressSpinner style="width: 100px; height: 100px;" stroke-width="6" aria-label="loading"></ProgressSpinner>
      </div>
    </div>
  </main>
</template>

<script setup>
import { useAppStore } from '@/store/app';

const appStore = useAppStore();
</script>
