<template>
  <main class="py-10 px-6">
    <SideBar />
    <div class="w-full container mx-auto min-h-screen relative">
      <router-view />
      <Toast></Toast>
    </div>
    <div v-if="appStore.loading"
      class="w-full h-full min-h-screen flex justify-center items-center fixed top-0 left-0 bg-slate-600/10">
      <div class="w-full h-full flex justify-center items-center">
        <progressspinner style="width: 100px; height: 100px;" stroke-width="6" aria-label="loading"></progressspinner>
      </div>
    </div>
    <AtlassianWidget :key="route.fullPath" />
  </main>

</template>

<script setup>
import { useAppStore } from '@/store/app';
import { useRoute } from 'vue-router';
import { onMounted } from 'vue';
import SideBar from '@/components/SideBar.vue';
import AtlassianWidget from '@/components/AtlassianWidget.vue';

const appStore = useAppStore();
const route = useRoute();

onMounted(async () => {
  await appStore.loadEnums();
})

</script>
