<template>
  <div class="card flex flex-col justify-center items-center w-full gap-y-8">
    <Button label="Go Back" icon="pi pi-arrow-left" variant="text" severity="contrast" class="self-start" size="large"
      @click="router.push('/')"></Button>
    <h2 class="text-4xl font-bold text-blue-900 self-start">Announcements</h2>
    <DataView :value="announcements" class="w-full">
      <template #list="slotProps">
        <div class="flex flex-col w-full">
          <div v-for="(item, index) in slotProps.items" :key="index">
            <div class="flex flex-col sm:flex-row sm:items-center p-6 gap-4 w-full"
              :class="{ 'border-t border-surface-200 dark:border-surface-700': index !== 0 }">
              <div class="md:w-40 relative">
                <img class="block xl:block mx-auto rounded w-full" :src="item.image_url" :alt="item.title" />
              </div>
              <div class="flex flex-col md:flex-row justify-between md:items-center gap-6 w-8/12">
                <div class="flex flex-row md:flex-col justify-between items-start gap-2 w-full">
                  <div class="w-full">
                    <div class="text-lg font-medium mt-2">{{ item.title }}</div>
                    <div class="font-medium text-surface-500 dark:text-surface-400 text-sm truncate">{{
                      item.description }}</div>
                  </div>
                </div>

              </div>
              <div class="flex flex-col md:items-end gap-8 md:ml-auto">
                <div class="flex flex-row-reverse md:flex-row gap-2">
                  <Button label="View Announcement" class="flex-auto md:flex-initial whitespace-nowrap"
                    severity="contrast" @click="showDialog(item)"></Button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </template>
    </DataView>
    <Dialog v-model:visible="visible" modal header="Announcement" class="w-[95vw] lg:w-[80vw]">
      <h2 class="text-black block mb-8 text-3xl font-medium">{{ currentAnnouncement.title }}</h2>
      <p v-html="currentAnnouncement.description" class="text-xl"></p>
      <div class="flex justify-center mt-12">
        <img class="block xl:block mx-auto rounded w-10/12 lg:w-8/12 xl:w-6/12" :src="currentAnnouncement.image_url"
          :alt="currentAnnouncement.title" />
      </div>

    </Dialog>
  </div>
</template>
<script setup>
import { useProduct } from '@/composables/product';
import { inject, onMounted, ref } from 'vue';
import { useRouter } from 'vue-router';

const visible = ref(false);
const currentAnnouncement = ref(null);

const router = useRouter();
const division = inject('projectDivision');

const {
  loadAnnouncements,
  announcements,
} = useProduct();

const showDialog = (item) => {
  currentAnnouncement.value = item;
  visible.value = true;
}

onMounted(async () => {
  await loadAnnouncements(division);
});
</script>
