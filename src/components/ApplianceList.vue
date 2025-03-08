<script setup>
import { defineProps, defineEmits } from 'vue';

const props = defineProps({
  appliances: {
    type: Array,
    required: true,
    default: () => [],
  },
  remainingSpace: {
    type: Object,
    required: true,
    default: () => ({ top: 0, bottom: 0 }),
  },
});

const emit = defineEmits(['add-appliance']);

const onDragStart = (event, appliance) => {
  if (event.dataTransfer) {
    event.dataTransfer.setData('application/json', JSON.stringify(appliance));
    event.dataTransfer.effectAllowed = 'move';
  }
};

// Helper function to get the total width of an appliance (physical width + gap)
const getTotalWidth = (appliance) => {
  return appliance.width + (appliance.gap || 0);
};

const isValidDrop = (appliance) => {
  // Check if there's enough space in the section based on total width (width + gap)
  return appliance.section === 'top'
    ? props.remainingSpace.top >= getTotalWidth(appliance)
    : props.remainingSpace.bottom >= getTotalWidth(appliance);
};

const addAppliance = (appliance) => {
  if (isValidDrop(appliance)) {
    emit('add-appliance', appliance);
  }
};
</script>

<template>
  <div class="bg-white p-4 rounded-lg shadow">
    <h2 class="text-xl font-semibold mb-4">Available Appliances</h2>
    <div class="space-y-4">
      <div>
        <h3 class="font-medium mb-2">Top Section</h3>
        <div class="grid grid-cols-2 gap-4">
          <div v-for="appliance in appliances.filter((a) => a.section === 'top')" :key="appliance.id"
            class="border p-2 rounded hover:bg-gray-50 relative" :class="{
              'opacity-50 cursor-not-allowed': !isValidDrop(appliance),
            }">
            <div :draggable="isValidDrop(appliance)" @dragstart="onDragStart($event, appliance)"
              class="cursor-move pr-10" :class="{ 'cursor-not-allowed': !isValidDrop(appliance) }">
              <div class="text-sm font-medium">{{ appliance.name }}</div>
              <div class="text-xs text-gray-500">
                Width: {{ appliance.width }}"
                <span class="text-gray-400">(+{{ appliance.gap }}" gap)</span>
              </div>
              <div class="text-xs text-gray-500">Total: {{ getTotalWidth(appliance) }}"</div>
              <div class="text-xs text-gray-500">${{ appliance.price.toFixed(2) }}</div>
            </div>
            <button @click="addAppliance(appliance)" :disabled="!isValidDrop(appliance)"
              class="absolute right-2 top-2 bg-blue-500 hover:bg-blue-600 text-white text-xs px-2 py-1 rounded"
              :class="{ 'opacity-50 cursor-not-allowed': !isValidDrop(appliance) }">
              Add
            </button>
          </div>
        </div>
      </div>

      <div>
        <h3 class="font-medium mb-2">Bottom Section</h3>
        <div class="grid grid-cols-2 gap-4">
          <div v-for="appliance in appliances.filter((a) => a.section === 'bottom')" :key="appliance.id"
            class="border p-2 rounded hover:bg-gray-50 relative" :class="{
              'opacity-50 cursor-not-allowed': !isValidDrop(appliance),
            }">
            <div :draggable="isValidDrop(appliance)" @dragstart="onDragStart($event, appliance)"
              class="cursor-move pr-10" :class="{ 'cursor-not-allowed': !isValidDrop(appliance) }">
              <div class="text-sm font-medium">{{ appliance.name }}</div>
              <div class="text-xs text-gray-500">
                Width: {{ appliance.width }}"
                <span class="text-gray-400">(+{{ appliance.gap }}" gap)</span>
              </div>
              <div class="text-xs text-gray-500">Total: {{ getTotalWidth(appliance) }}"</div>
              <div class="text-xs text-gray-500">${{ appliance.price.toFixed(2) }}</div>
            </div>
            <button @click="addAppliance(appliance)" :disabled="!isValidDrop(appliance)"
              class="absolute right-2 top-2 bg-blue-500 hover:bg-blue-600 text-white text-xs px-2 py-1 rounded"
              :class="{ 'opacity-50 cursor-not-allowed': !isValidDrop(appliance) }">
              Add
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
