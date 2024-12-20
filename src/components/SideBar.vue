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
            <template v-for="(menuItem, index) in menuItems" :key="index">
              <li class="first:mt-0 mt-1" :class="{ 'mt-6': menuItem.children.length > 0 }"
                v-if="menuItem.roles.includes(userStore.currentRole)">
                <a v-if="!menuItem.children.length" @click="navigateTo(menuItem.path)" v-ripple
                  class="flex items-center cursor-pointer px-4 py-2 rounded hover:bg-surface-200 text-black duration-150 transition-colors p-ripple">
                  <i :class="menuItem.icon" class="mr-2"></i>
                  <span class="font-medium">{{ menuItem.name }}</span>
                </a>
                <template v-if="menuItem.children.length">
                  <div v-ripple v-styleclass="{
                    selector: '@next',
                    enterFromClass: 'hidden',
                    enterActiveClass: 'animate-slidedown',
                    leaveToClass: 'hidden',
                    leaveActiveClass: 'animate-slideup'
                  }"
                    class="px-4 py-2 flex items-center justify-between text-surface-500 hover:text-black cursor-pointer p-ripple transition-colors duration-300">
                    <span class="font-medium">{{ menuItem.name }}</span>
                    <i class="pi pi-chevron-down"></i>
                  </div>
                  <ul class="list-none p-0 m-0 overflow-hidden text-sm">
                    <template v-for="(item, index) in menuItem.children" :key="`${menuItem.name}-${index}`">
                      <li v-if="item.roles.includes(userStore.currentRole)">
                        <a v-ripple
                          class="flex items-center cursor-pointer px-4 py-2 rounded hover:bg-surface-200 text-black duration-150 transition-colors p-ripple"
                          @click="navigateTo(item.path)">
                          <i :class="item.icon" class="mr-2"></i>
                          <span class="font-medium">{{ item.name }}</span>
                        </a>
                      </li>
                    </template>
                  </ul>
                </template>
              </li>
            </template>
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
import { ref } from 'vue';

const router = useRouter();
const appStore = useAppStore();
const userStore = useUserStore();

const menuItems = ref([
  {
    name: 'Home',
    icon: 'pi pi-home',
    path: '/',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR'],
  },
  {
    name: 'RFQs',
    icon: 'pi pi-file-pdf',
    path: '/rfqs',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR'],
  },
  {
    name: 'Orders',
    icon: 'pi pi-shopping-cart',
    path: '/orders',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR'],
  },
  {
    name: 'Admin Menu',
    roles: ['ADMIN', 'MANAGER'],
    children: [
      {
        name: 'Users',
        icon: 'pi pi-users',
        path: '/users',
        roles: ['ADMIN', 'MANAGER'],
      },
      {
        name: 'Companies',
        icon: 'pi pi-building',
        path: '/companies',
        roles: ['ADMIN', 'MANAGER'],
      },
    ],
  },
]);

const close = (closeCallback) => {
  appStore.closeSidebar();
  closeCallback();
};

const navigateTo = (path) => {
  router.push(path);
  appStore.closeSidebar();
};
</script>
