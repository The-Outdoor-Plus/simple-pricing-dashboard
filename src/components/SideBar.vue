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
                v-if="menuItem.roles.includes(userStore.currentRole) && (menuItem.division.includes(division) || menuItem.division.includes('All'))">
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
                      <li
                        v-if="item.roles.includes(userStore.currentRole) && (item.division.includes(division) || item.division.includes('All'))">
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
          <div class="flex items-center w-full mb-1 ml-1">
            <Button
              v-if="userStore.isUserAuthenticated && division === 'The Outdoor Plus' && userStore.hasAccessTo('Videl USA')"
              type="button" label="Videl USA Portal" icon="pi pi-external-link" variant="text" severity="contrast"
              @click="navigateToPortal()"></Button>
          </div>
          <div class="flex items-center w-full mb-1 ml-1">
            <Button
              v-if="userStore.isUserAuthenticated && division === 'Videl USA' && userStore.hasAccessTo('The Outdoor Plus')"
              type="button" label="The Outdoor Plus Portal" icon="pi pi-external-link" variant="text"
              severity="contrast" @click="navigateToPortal()"></Button>
          </div>
          <div class="flex items-center w-full mb-2 ml-1">
            <Button v-if="userStore.isUserAuthenticated" type="button" label="Sign Out" icon="pi pi-sign-out"
              variant="text" severity="contrast" @click="signOut()"></Button>
          </div>
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
import { ref, inject } from 'vue';

const router = useRouter();
const appStore = useAppStore();
const userStore = useUserStore();
const division = inject('projectDivision');

const menuItems = ref([
  {
    name: 'Home',
    icon: 'pi pi-home',
    path: '/',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR', 'TOP_SALES'],
    division: ['The Outdoor Plus', 'Videl USA'],
  },
  {
    name: 'RFQs',
    icon: 'pi pi-file-pdf',
    path: '/rfqs',
    children: [],
    // roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR'],
    roles: ['ADMIN'],
    division: ['The Outdoor Plus', 'Videl USA'],
  },
  {
    name: 'Custom BBQ Island Configurator',
    icon: 'pi pi-calculator',
    path: '/visual-custom-bbq-island',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'TOP_SALES'],
    division: ['Videl USA'],
  },
  {
    name: 'Fire Media Calculator',
    icon: 'pi pi-calculator',
    path: '/fire-media-calculator',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'SALES', 'GROUP', 'LANDSCAPE', 'INTERNET', 'DEALER', 'DISTRIBUTOR', 'MASTER_DISTRIBUTOR', 'TOP_SALES'],
    division: ['The Outdoor Plus'],
  },
  {
    name: 'Fire Media Calculator',
    icon: 'pi pi-calculator',
    path: '/fire-media-calculator',
    children: [],
    roles: ['ADMIN', 'MANAGER', 'TOP_SALES'],
    division: ['Videl USA'],
  },
  {
    name: 'Admin Menu',
    roles: ['ADMIN', 'MANAGER'],
    division: ['All'],
    children: [
      {
        name: 'Users',
        icon: 'pi pi-users',
        path: '/users',
        roles: ['ADMIN', 'MANAGER'],
        division: ['All'],
      },
      {
        name: 'Companies',
        icon: 'pi pi-building',
        path: '/companies',
        roles: ['ADMIN', 'MANAGER'],
        division: ['All'],
      },
      {
        name: 'Emails',
        icon: 'pi pi-envelope',
        path: '/emails',
        roles: ['ADMIN', 'MANAGER'],
        division: ['All'],
      },
      {
        name: 'Price Tiers',
        icon: 'pi pi-tag',
        path: '/price-tiers',
        roles: ['ADMIN', 'MANAGER'],
        division: ['All'],
      },
    ],
  },
]);

const close = (closeCallback) => {
  appStore.closeSidebar();
  closeCallback();
};

const navigateToPortal = () => {
  const windowDomain = window.location.hostname;
  if (division === 'The Outdoor Plus') {
    if (windowDomain.includes('portal-topfires')) {
      navigateTo('https://portal-videlusa.kodeloom.dev', true);
    } else {
      navigateTo('https://portal.videlusa.com', true);
    }
  } else {
    if (windowDomain.includes('portal-videlusa')) {
      navigateTo('https://portal-topfires.kodeloom.dev', true);
    } else {
      navigateTo('https://portal.topfires.com', true);
    }
  }
}

const navigateTo = (path, external = false) => {
  if (external) {
    window.open(path, '_blank', 'noopener,noreferrer');
  } else {
    router.push(path);
  }
  appStore.closeSidebar();
};

const signOut = async () => {
  await userStore.logout();
  router.push('/login');
};
</script>
