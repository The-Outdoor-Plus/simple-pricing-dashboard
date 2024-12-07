<script setup>
import { defineProps } from 'vue';

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

const onDragStart = (event, appliance) => {
  if (event.dataTransfer) {
    event.dataTransfer.setData('application/json', JSON.stringify(appliance));
    event.dataTransfer.effectAllowed = 'move';
  }
};

const isValidDrop = (appliance) => {
  return appliance.section === 'top'
    ? props.remainingSpace.top >= appliance.width
    : props.remainingSpace.bottom >= appliance.width;
};
</script>

<template>
  <div class="bg-white p-4 rounded-lg shadow">
    <h2 class="text-xl font-semibold mb-4">Available Appliances</h2>
    <div class="space-y-4">
      <div>
        <h3 class="font-medium mb-2">Top Section</h3>
        <div class="grid grid-cols-2 gap-4">
          <div
            v-for="appliance in appliances.filter((a) => a.section === 'top')"
            :key="appliance.id"
            :draggable="true"
            @dragstart="onDragStart($event, appliance)"
            class="border p-2 rounded cursor-move hover:bg-gray-50"
            :class="{
              'opacity-50 cursor-not-allowed': !isValidDrop(appliance),
            }"
          >
            <div class="text-sm font-medium">{{ appliance.name }}</div>
            <div class="text-xs text-gray-500">Width: {{ appliance.width }}"</div>
            <div class="text-xs text-gray-500">${{ appliance.price.toFixed(2) }}</div>
          </div>
        </div>
      </div>

      <div>
        <h3 class="font-medium mb-2">Bottom Section</h3>
        <div class="grid grid-cols-2 gap-4">
          <div
            v-for="appliance in appliances.filter((a) => a.section === 'bottom')"
            :key="appliance.id"
            :draggable="true"
            @dragstart="onDragStart($event, appliance)"
            class="border p-2 rounded cursor-move hover:bg-gray-50"
            :class="{
              'opacity-50 cursor-not-allowed': !isValidDrop(appliance),
            }"
          >
            <div class="text-sm font-medium">{{ appliance.name }}</div>
            <div class="text-xs text-gray-500">Width: {{ appliance.width }}"</div>
            <div class="text-xs text-gray-500">${{ appliance.price.toFixed(2) }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
