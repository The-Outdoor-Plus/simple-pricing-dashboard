import { defineStore } from 'pinia';
import { useUserStore } from './user';

export const useCartStore = defineStore('cart', {
  state: () => ({
    items: [],
    lastUpdated: null,
    rawItems: [],
    rawLastUpdated: null,
  }),

  getters: {
    cartItems: (state) => state.items,
    cartTotal: (state) => {
      return state.items.reduce((total, group) => {
        const groupTotal = group.items.reduce((sum, item) => {
          return sum + (item.price || 0) * (item.quantity || 1);
        }, 0);
        return total + groupTotal;
      }, 0);
    },
    cartMapTotal: (state) => {
      return state.items.reduce((total, group) => {
        const groupTotal = group.items.reduce((sum, item) => {
          return sum + (item.map_price || 0) * (item.quantity || 1);
        }, 0);
        return total + groupTotal;
      }, 0);
    },
    cartMsrpTotal: (state) => {
      return state.items.reduce((total, group) => {
        const groupTotal = group.items.reduce((sum, item) => {
          return sum + (item.msrp_price || 0) * (item.quantity || 1);
        }, 0);
        return total + groupTotal;
      }, 0);
    },
    cartItemCount: (state) => {
      return state.items.reduce((total, group) => {
        return total + group.items.length;
      }, 0);
    },
  },

  actions: {
    addToCart(priceBreakdown, productInfo, currentRole) {
      const priceRolesKey = {
        DISTRIBUTOR: 'add_on_price_distributor',
        MASTER_DISTRIBUTOR: 'add_on_price_master_distributor',
        DEALER: 'add_on_price',
        INTERNET: 'add_on_price_internet',
        LANDSCAPE: 'add_on_price_landscape',
        GROUP: 'add_on_price_group',
      };

      const cartGroup = {
        id: Date.now(),
        dateAdded: new Date().toISOString(),
        productInfo: {
          name: productInfo.name,
          sku: productInfo.sku,
        },
        items: priceBreakdown
          .map((item) => {
            let name = item.attribute_option || '';
            let sku = item.part_number || '';
            if (item.attribute_option.includes('Selected configuration')) {
              name = productInfo.name;
              sku = productInfo.sku;
            }

            return {
              name: name,
              description: item.description || '',
              sku: sku,
              quantity: item.quantity || 1,
              map_price: item.add_on_price_map || 0,
              msrp_price: item.add_on_price_msrp || 0,
              price: item[priceRolesKey[currentRole]] || undefined,
            };
          })
          .filter((item) => item.name !== 'Total'),
      };

      this.items.push(cartGroup);
      this.rawItems.push(cartGroup.items);
      this.lastUpdated = new Date().toISOString();
      this.saveToLocalStorage();
    },

    removeFromCart(groupId) {
      this.items = this.items.filter((group) => group.id !== groupId);
      this.lastUpdated = new Date().toISOString();
      this.saveToLocalStorage();
    },

    clearCart() {
      this.items = [];
      this.lastUpdated = new Date().toISOString();
      this.rawItems = [];
      this.rawLastUpdated = new Date().toISOString();
      this.saveToLocalStorage();
    },

    saveToLocalStorage() {
      localStorage.setItem(
        'cart',
        JSON.stringify({
          items: this.items,
          lastUpdated: this.lastUpdated,
        }),
      );
      localStorage.setItem(
        'rawItems',
        JSON.stringify({ rawItems: this.rawItems, lastUpdated: this.lastUpdated }),
      );
    },

    loadFromLocalStorage() {
      const cartData = localStorage.getItem('cart');
      if (cartData) {
        const { items, lastUpdated } = JSON.parse(cartData);
        this.items = items;
        this.lastUpdated = lastUpdated;
      }
      const rawItemsData = localStorage.getItem('rawItems');
      if (rawItemsData) {
        const { rawItems, lastUpdated } = JSON.parse(rawItemsData);
        this.rawItems = rawItems;
        this.rawLastUpdated = lastUpdated;
      }
    },

    // This will be called when user logs out
    resetCart() {
      this.clearCart();
      localStorage.removeItem('cart');
      localStorage.removeItem('rawItems');
    },
  },
});
