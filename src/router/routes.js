import HomeView from '@/views/HomeView.vue';

export default [
  {
    path: '/',
    component: () => import('@/layouts/Default.vue'),
    children: [
      {
        path: '',
        name: 'Home - The Outdoor Plus Product Configurator',
        component: () =>
          import(/* webpackchunkName: "product-configurator" */ '@/views/HomeView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: [
            'GROUP',
            'LANDSCAPE',
            'INTERNET',
            'ECOMMERCE',
            'USER',
            'GUEST',
            'DEALER',
            'DISTRIBUTOR',
            'MASTER_DISTRIBUTOR',
            'MANAGER',
            'ADMIN',
            'SALES',
          ],
        },
      },
      {
        path: 'announcements',
        name: 'Announcements - The Outdoor Plus Product Configurator',
        component: () =>
          import(/* webpackchunkName: "announcements" */ '@/views/AnnouncementsView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: [
            'GROUP',
            'LANDSCAPE',
            'INTERNET',
            'ECOMMERCE',
            'USER',
            'GUEST',
            'DEALER',
            'DISTRIBUTOR',
            'MASTER_DISTRIBUTOR',
            'MANAGER',
            'ADMIN',
            'SALES',
          ],
        },
      },
      {
        path: 'bbq-island',
        name: 'BBQ Island Configurator',
        component: () =>
          import(/* webpackchunkName: "bbq-island" */ '@/views/BBQIslandView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: [
            'GROUP',
            'LANDSCAPE',
            'INTERNET',
            'ECOMMERCE',
            'USER',
            'GUEST',
            'DEALER',
            'DISTRIBUTOR',
            'MASTER_DISTRIBUTOR',
            'MANAGER',
            'ADMIN',
            'SALES',
          ],
        },
      },
    ],
  },
  {
    path: '/login',
    component: () => import('@/layouts/LoginLayout.vue'),
    children: [
      {
        path: '',
        name: 'Login',
        component: () => import(/* webpackChunkName: "login" */ '@/views/LoginView.vue'),
        meta: {
          requiresAuth: false,
          onlyWhenLoggedOut: true,
          roles: [
            'GROUP',
            'LANDSCAPE',
            'INTERNET',
            'ECOMMERCE',
            'USER',
            'GUEST',
            'DEALER',
            'DISTRIBUTOR',
            'MASTER_DISTRIBUTOR',
            'MANAGER',
            'ADMIN',
            'SALES',
          ],
        },
      },
    ],
  },
];
