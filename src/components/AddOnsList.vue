<script setup>
import { defineProps, defineEmits, ref } from 'vue';

const props = defineProps({
  addOns: {
    type: Array,
    required: true,
    default: () => [],
  },
  selectedAddOns: {
    type: Array,
    required: true,
    default: () => [],
  },
});

const emit = defineEmits(['update-selected-add-ons']);

// Store and manage quantities locally
const quantities = ref({});

// Initialize quantities for each add-on
props.addOns.forEach(addOn => {
  // Check if the add-on is already in selectedAddOns and get its quantity
  const existingAddOn = props.selectedAddOns.find(item => item.id === addOn.id);
  quantities.value[addOn.id] = existingAddOn ? existingAddOn.quantity : 0;
});

const incrementQuantity = (addOn) => {
  // Check if adding one more would exceed the max quantity
  if (quantities.value[addOn.id] < (addOn.maxQuantity || Infinity)) {
    quantities.value[addOn.id]++;
    updateSelectedAddOns();
  }
};

const decrementQuantity = (addOnId) => {
  if (quantities.value[addOnId] > 0) {
    quantities.value[addOnId]--;
    updateSelectedAddOns();
  }
};

const isAtMaxQuantity = (addOn) => {
  return quantities.value[addOn.id] >= (addOn.maxQuantity || Infinity);
};

const updateSelectedAddOns = () => {
  const updatedAddOns = [];

  // Create new array of selected add-ons with quantities
  Object.keys(quantities.value).forEach(addOnId => {
    if (quantities.value[addOnId] > 0) {
      const addOn = props.addOns.find(item => item.id === addOnId);
      updatedAddOns.push({
        ...addOn,
        quantity: quantities.value[addOnId],
      });
    }
  });

  // Emit the updated array
  emit('update-selected-add-ons', updatedAddOns);
};

const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
};
</script>

<template>
  <div class="bg-white p-4 rounded-lg shadow my-6">
    <h2 class="text-xl font-semibold mb-4">Available Add-Ons</h2>
    <p class="text-sm text-gray-600 mb-4">
      Add-ons don't take up space in your island but enhance your BBQ experience.
    </p>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
      <div v-for="addOn in addOns" :key="addOn.id" class="border rounded-lg p-4 hover:bg-gray-50 transition-colors">
        <div class="flex items-start justify-between">
          <div>
            <h3 class="font-medium text-lg">{{ addOn.name }}</h3>
            <p class="text-gray-600 text-sm">{{ addOn.description }}</p>
            <p class="text-blue-600 font-medium mt-2">${{ addOn.price.toFixed(2) }}</p>
            <p v-if="addOn.maxQuantity" class="text-gray-500 text-xs mt-1">
              Limit: {{ addOn.maxQuantity }} per island
            </p>
          </div>

          <div class="flex flex-col items-end">
            <div class="flex items-center space-x-2">
              <button @click="decrementQuantity(addOn.id)"
                class="w-8 h-8 flex items-center justify-center rounded-full bg-gray-200 hover:bg-gray-300 focus:outline-none"
                :class="{ 'opacity-50 cursor-not-allowed': quantities[addOn.id] === 0 }"
                :disabled="quantities[addOn.id] === 0">
                <span class="text-lg font-bold">-</span>
              </button>

              <span class="w-8 text-center">{{ quantities[addOn.id] }}</span>

              <button @click="incrementQuantity(addOn)"
                class="w-8 h-8 flex items-center justify-center rounded-full bg-blue-500 hover:bg-blue-600 text-white focus:outline-none"
                :class="{ 'opacity-50 cursor-not-allowed bg-blue-400': isAtMaxQuantity(addOn) }"
                :disabled="isAtMaxQuantity(addOn)">
                <span class="text-lg font-bold">+</span>
              </button>
            </div>

            <div v-if="isAtMaxQuantity(addOn) && quantities[addOn.id] > 0" class="text-xs text-orange-500 mt-1">
              Maximum limit reached
            </div>
          </div>
        </div>
      </div>
    </div>

    <div v-if="selectedAddOns.length > 0" class="mt-4 p-3 bg-blue-50 rounded-lg">
      <h3 class="font-medium mb-2">Selected Add-Ons:</h3>
      <ul class="list-disc pl-5">
        <li v-for="item in selectedAddOns" :key="item.id" class="text-sm">
          {{ item.name }} × {{ item.quantity }}
          <span class="text-gray-600">({{ formatPrice(item.price * item.quantity) }})</span>
        </li>
      </ul>
    </div>
  </div>
</template>
