<script setup>
import logoUrl from '@/assets/top_logo.svg';
import { onMounted } from 'vue';
import { RouterLink, RouterView } from 'vue-router'
import { useUserStore } from './store/user';
import { useRoute } from 'vue-router';

const userStore = useUserStore();
const route = useRoute();

onMounted(async () => {
  if (!(userStore?.company && userStore.company?.name) && !!userStore.user) {
    await userStore.loadUserCompany();
  }
})
</script>

<template>
  <router-view v-slot="{ Component }">
    <transition name="fade">
      <div class="w-full flex flex-col">
        <Toolbar v-if="route?.name !== 'Login'" style="padding: 1rem 1rem 1rem 1.5rem">
          <template #start>
            <div class="flex items-center gap-2">
              <img :src="logoUrl" class="w-7/12 md:w-10/12">
            </div>
          </template>
        </Toolbar>
        <component :is="Component"></component>
      </div>
    </transition>
  </router-view>
</template>

<style scoped>
header {
  line-height: 1.5;
  max-height: 100vh;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
  }
}
</style>
