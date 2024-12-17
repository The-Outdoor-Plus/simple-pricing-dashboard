<template>
  <div class="p-6">
    <div class="flex justify-between items-center mb-6">
      <h1 class="text-2xl font-bold">Shopping Cart</h1>
      <div class="space-x-4">
        <Button
          v-if="cartStore.cartItemCount > 0"
          type="button"
          label="Create RFQ"
          icon="pi pi-file"
          severity="success"
          @click="createRFQ"
        />
        <Button
          v-if="cartStore.cartItemCount > 0"
          type="button"
          label="Clear Cart"
          icon="pi pi-trash"
          severity="danger"
          @click="confirmClearCart"
        />
      </div>
    </div>

    <!-- Empty Cart Message -->
    <div v-if="cartStore.cartItemCount === 0" class="text-center py-12">
      <i class="pi pi-shopping-cart text-6xl text-gray-300 mb-4"></i>
      <h2 class="text-xl text-gray-600 mb-4">Your cart is empty</h2>
      <Button
        type="button"
        label="Continue Shopping"
        icon="pi pi-arrow-left"
        @click="router.push('/')"
      />
    </div>

    <!-- Cart Items -->
    <div v-else class="space-y-6">
      <div
        v-for="group in cartStore.cartItems"
        :key="group.id"
        class="bg-white rounded-lg shadow p-6"
      >
        <div class="flex justify-between items-start mb-4">
          <div>
            <p class="text-gray-500 text-sm">Added {{ formatDate(group.dateAdded) }}</p>
          </div>
          <Button icon="pi pi-trash" severity="danger" text @click="removeGroup(group.id)" />
        </div>

        <DataTable :value="group.items" class="mt-4">
          <Column field="name" header="Item"></Column>
          <!-- <Column field="description" header="Description"></Column> -->
          <Column field="sku" header="SKU"></Column>
          <!-- <Column field="quantity" header="Quantity"></Column> -->
          <Column field="price" header="Your Company Cost">
            <template #body="slotProps">
              {{ formatPrice(slotProps.data?.price || 0) }}
            </template>
          </Column>
          <Column field="map_price" header="MAP">
            <template #body="slotProps">
              {{ formatPrice(slotProps.data?.map_price || 0) }}
            </template>
          </Column>
          <Column field="msrp_price" header="MSRP">
            <template #body="slotProps">
              {{ formatPrice(slotProps.data?.msrp_price || 0) }}
            </template>
          </Column>
        </DataTable>
      </div>
    </div>

    <!-- Cart Total -->
    <div v-if="cartStore.cartItemCount > 0" class="mt-8 bg-white rounded-lg shadow p-6">
      <div class="flex justify-end">
        <div class="w-64">
          <div class="flex justify-between py-2">
            <span class="font-semibold">Total Items:</span>
            <span>{{ cartStore.cartItemCount }}</span>
          </div>
          <div class="flex justify-between py-2 border-t border-gray-200">
            <span class="font-semibold">Your Company Total Cost:</span>
            <span class="font-bold">{{ formatPrice(cartStore.cartTotal) }}</span>
          </div>
          <div class="flex justify-between py-2 border-t border-gray-200">
            <span class="font-semibold">MAP Total:</span>
            <span class="font-bold">{{ formatPrice(cartStore.cartMapTotal) }}</span>
          </div>
          <div class="flex justify-between py-2 border-t border-gray-200">
            <span class="font-semibold">MSRP Total:</span>
            <span class="font-bold">{{ formatPrice(cartStore.cartMsrpTotal) }}</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Confirmation Dialog -->
    <Dialog
      v-model:visible="showClearCartDialog"
      modal
      header="Clear Cart"
      :style="{ width: '350px' }"
    >
      <div class="text-center">
        <i class="pi pi-exclamation-triangle text-yellow-500 text-4xl mb-4"></i>
        <p>Are you sure you want to clear your cart?</p>
      </div>
      <template #footer>
        <Button label="No" icon="pi pi-times" text @click="showClearCartDialog = false" />
        <Button label="Yes" icon="pi pi-check" severity="danger" @click="clearCart" />
      </template>
    </Dialog>
  </div>
</template>

<script setup>
import { ref } from 'vue';
import { useRouter } from 'vue-router';
import { useCartStore } from '@/store/cart';

const router = useRouter();
const cartStore = useCartStore();
const showClearCartDialog = ref(false);

// Load cart data on component mount

const formatDate = (dateString) => {
  return new Intl.DateTimeFormat('en-US', {
    year: 'numeric',
    month: 'short',
    day: 'numeric',
    hour: 'numeric',
    minute: 'numeric',
  }).format(new Date(dateString));
};

const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
};

const removeGroup = (groupId) => {
  cartStore.removeFromCart(groupId);
};

const confirmClearCart = () => {
  showClearCartDialog.value = true;
};

const clearCart = () => {
  cartStore.clearCart();
  showClearCartDialog.value = false;
};

const createRFQ = () => {
  // Convert cart items to RFQ format
  const allItems = cartStore.cartItems.flatMap((group) => group.items);
  const totalItems = {
    map_price: cartStore.cartMapTotal,
    msrp_price: cartStore.cartMsrpTotal,
    price: cartStore.cartTotal,
  };
  router.push({
    path: '/rfq',
    query: {
      items: JSON.stringify(allItems),
      totalItems: JSON.stringify(totalItems),
    },
  });
};
</script>
