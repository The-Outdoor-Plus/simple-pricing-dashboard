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
        component: () => import(/* webpackchunkName: "bbq-island" */ '@/views/BBQIslandView.vue'),
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
        path: 'visual-bbq-island',
        name: 'VIsual BBQ Island Configurator',
        component: () => import(/* webpackchunkName: "bbq-island" */ '@/views/2DBBQIslandView.vue'),
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
        path: 'rfq',
        name: 'RFQ - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "rfq" */ '@/views/RFQView.vue'),
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
        path: 'rfqs',
        name: 'RFQ List - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "rfq-list" */ '@/views/RFQListView.vue'),
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
        path: 'rfq/:id',
        name: 'RFQ Detail - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "rfq-detail" */ '@/views/RFQDetailView.vue'),
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
        path: 'cart',
        name: 'Cart - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "cart" */ '@/views/CartView.vue'),
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
        path: 'users',
        name: 'Users - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "users" */ '@/views/UsersView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: ['ADMIN', 'MANAGER'],
        },
      },
      {
        path: 'companies',
        name: 'Companies - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "companies" */ '@/views/CompaniesView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: ['ADMIN', 'MANAGER'],
        },
      },
      {
        path: 'emails',
        name: 'Emails - The Outdoor Plus Product Configurator',
        component: () => import(/* webpackchunkName: "emails" */ '@/views/EmailsView.vue'),
        meta: {
          requiresAuth: true,
          onlyWhenLoggedOut: false,
          roles: ['ADMIN', 'MANAGER'],
        },
      },
      {
        path: 'fire-media-calculator',
        name: 'Fire Media Calculator - The Outdoor Plus Product Configurator',
        component: () =>
          import(
            /* webpackchunkName: "fire-media-calculator" */ '@/views/FireMediaCalculatorView.vue'
          ),
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
