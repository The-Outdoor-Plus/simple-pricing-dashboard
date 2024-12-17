<template>
  <Drawer v-model:visible="appStore.showSidebar">
    <template #container="{ closeCallback }">
      <div class="flex flex-col h-full">
        <div class="flex items-center justify-end px-4 pt-4 shrink-0">
          <span>
            <Button type="button" @click="close(closeCallback)" icon="pi pi-times" rounded variant="text"
              severity="contrast"></Button>
          </span>
        </div>
        <div class="overflow-y-auto">
          <ul class="list-none p-2 m-0 overflow-x-hidden text-sm">
            <li>
              <a @click="navigateTo('/')" v-ripple
                class="flex items-center cursor-pointer px-4 py-2 rounded hover:bg-surface-200 text-black duration-150 transition-colors p-ripple">
                <i class="pi pi-home mr-2"></i>
                <span class="font-medium">Home</span>
              </a>
            </li>
            <li class="mt-6">
              <div v-ripple v-styleclass="{
                selector: '@next',
                enterFromClass: 'hidden',
                enterActiveClass: 'animate-slidedown',
                leaveToClass: 'hidden',
                leaveActiveClass: 'animate-slideup'
              }"
                class="px-4 py-2 flex items-center justify-between text-surface-500 hover:text-black cursor-pointer p-ripple transition-colors duration-300">
                <span class="font-medium">Admin Menu</span>
                <i class="pi pi-chevron-down"></i>
              </div>
              <ul class="list-none p-0 m-0 overflow-hidden text-sm">
                <li>
                  <a v-ripple
                    class="flex items-center cursor-pointer px-4 py-2 rounded hover:bg-surface-200 text-black duration-150 transition-colors p-ripple"
                    @click="navigateTo('/users')">
                    <i class="pi pi-users mr-2"></i>
                    <span class="font-medium">Users</span>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="mt-auto">
          <hr class="mb-4 mx-4 border-t border-0 border-surface-200 dark:border-surface-700" />
          <div class="m-4 flex items-center p-2 gap-2 rounded text-black duration-150 transition-colors p-ripple">
            <Avatar v-if="userStore?.currentUser?.avatar_url" :image="userStore?.currentUser?.avatar_url"
              shape="circle" />
            <span class="font-bold">{{ userStore?.currentUser?.first_name }} {{ userStore?.currentUser?.last_name }}
            </span>
          </div>
        </div>
      </div>
    </template>
  </Drawer>
</template>

<script setup>
import { useAppStore } from '@/store/app';
import { useUserStore } from '@/store/user';
import { useRouter } from 'vue-router';

const router = useRouter();
const appStore = useAppStore();
const userStore = useUserStore();

const close = (closeCallback) => {
  appStore.closeSidebar();
  closeCallback();
};

const navigateTo = (path) => {
  router.push(path);
  appStore.closeSidebar();
};
</script>
