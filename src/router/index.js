import { createRouter, createWebHistory } from 'vue-router';
import { useUserStore } from '@/store/user';
import routes from './routes';

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes,
});

router.beforeEach((to, from, next) => {
  const userStore = useUserStore();

  const allowedRoles = to.meta.roles || [];
  const requiresAuth = to.meta.requiresAuth;
  const onlyWhenLoggedOut = to.meta.onlyWhenLoggedOut;
  const requiresChangedPassword = to.meta.requiresChangedPassword;
  const currentUser = userStore.currentUser;
  const loggedIn = userStore.isUserAuthenticated;
  const isFirstTime = userStore.isFirstTime;

  // Skip authorization check for the not-authorized page itself
  if (to.path === '/not-authorized') {
    return next();
  }

  const reauthenticationTime = localStorage.getItem('reauthentication');
  if (reauthenticationTime && loggedIn) {
    const elapsedTimeInSeconds = Math.floor((Date.now() - reauthenticationTime) / 1000);

    if (elapsedTimeInSeconds > 600) {
      localStorage.removeItem('reauthentication');
      userStore.logout();
      return next({
        path: '/login',
      });
    }
  }

  if (requiresAuth && !onlyWhenLoggedOut && !loggedIn) {
    return next({
      path: '/login',
      query: { redirect: to.fullPath },
    });
  }

  if (requiresAuth && !loggedIn) {
    return next({
      path: '/login',
      query: { redirect: to.fullPath },
    });
  }

  if (loggedIn && requiresChangedPassword && isFirstTime) {
    return next({
      path: '/update-password',
      query: {
        redirect: to.fullPath,
        email: currentUser?.email,
        first_time: isFirstTime,
      },
    });
  }

  if (to.path === '/update-password' && !loggedIn && (to.query.email || to.query.first_time)) {
    return next({
      path: '/login',
    });
  }

  if (loggedIn && onlyWhenLoggedOut) {
    return next('/');
  }

  if (loggedIn && !allowedRoles.includes(currentUser?.user_metadata?.role || '')) {
    // Redirect to not-authorized page instead of login
    return next({
      path: '/not-authorized',
      query: {
        from: to.fullPath,
        role: currentUser?.user_metadata?.role || 'unknown',
      },
    });
  }

  next();
});

export default router;
