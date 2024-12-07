<script setup>
import { ref, computed } from 'vue';
import ApplianceList from './ApplianceList.vue';
import IslandPreview from './IslandPreview.vue';

const islandLength = ref(96); // Default 8ft
const placedAppliances = ref([]);
const placedApplianceCounter = ref(0);

const appliances = ref([
  { id: 'grill-30', name: '30" Grill', width: 30, price: 999.99, type: 'grill', section: 'top' },
  { id: 'grill-36', name: '36" Grill', width: 36, price: 1299.99, type: 'grill', section: 'top' },
  { id: 'grill-42', name: '42" Grill', width: 42, price: 1599.99, type: 'grill', section: 'top' },
  {
    id: 'burner-12',
    name: '12" Side Burner',
    width: 12,
    price: 299.99,
    type: 'sideBurner',
    section: 'top',
  },
  {
    id: 'burner-15',
    name: '15" Side Burner',
    width: 15,
    price: 399.99,
    type: 'sideBurner',
    section: 'top',
  },
  {
    id: 'fridge-24',
    name: '24" Refrigerator',
    width: 24,
    price: 899.99,
    type: 'refrigerator',
    section: 'bottom',
  },
  {
    id: 'drawer-15',
    name: '15" Storage Drawer',
    width: 15,
    price: 249.99,
    type: 'drawer',
    section: 'bottom',
  },
  {
    id: 'drawer-18',
    name: '18" Storage Drawer',
    width: 18,
    price: 299.99,
    type: 'drawer',
    section: 'bottom',
  },
  {
    id: 'door-18',
    name: '18" Access Door',
    width: 18,
    price: 199.99,
    type: 'door',
    section: 'bottom',
  },
  {
    id: 'door-24',
    name: '24" Access Door',
    width: 24,
    price: 249.99,
    type: 'door',
    section: 'bottom',
  },
  {
    id: 'door-30',
    name: '30" Access Door',
    width: 30,
    price: 299.99,
    type: 'door',
    section: 'bottom',
  },
]);

const remainingSpace = computed(() => {
  const spaceBySection = placedAppliances.value.reduce(
    (acc, item) => {
      acc[item.section] += item.width;
      return acc;
    },
    { top: 0, bottom: 0 },
  );

  return {
    top: islandLength.value - spaceBySection.top,
    bottom: islandLength.value - spaceBySection.bottom,
  };
});

const totalCost = computed(() => {
  const islandCost = (islandLength.value / 12) * 250;
  const appliancesCost = placedAppliances.value.reduce((acc, item) => acc + item.price, 0);
  return islandCost + appliancesCost;
});

const handleDrop = (appliance, position, section) => {
  // Check if there's enough remaining space in the section
  if (remainingSpace.value[section] >= appliance.width) {
    // Get all appliances in the same section
    const sectionAppliances = placedAppliances.value.filter((a) => a.section === section);

    // Check for overlap with existing appliances
    const hasOverlap = sectionAppliances.some((existing) => {
      const existingStart = existing.position;
      const existingEnd = existing.position + existing.width;
      const newStart = position;
      const newEnd = position + appliance.width;
      return newStart < existingEnd && newEnd > existingStart;
    });

    // Only check for position validity and overlap
    if (!hasOverlap && position >= 0 && position + appliance.width <= islandLength.value) {
      placedAppliances.value.push({
        ...appliance,
        instanceId: `${appliance.id}-${placedApplianceCounter.value++}`,
        position,
        section,
      });
      // Sort appliances by section and position
      placedAppliances.value.sort((a, b) => {
        if (a.section !== b.section) return a.section === 'top' ? -1 : 1;
        return a.position - b.position;
      });
    }
  }
};

const updateAppliancePosition = (index, newPosition) => {
  const appliance = placedAppliances.value[index];
  const sectionAppliances = placedAppliances.value.filter(
    (a, i) => a.section === appliance.section && i !== index,
  );

  const hasOverlap = sectionAppliances.some((existing) => {
    const existingStart = existing.position;
    const existingEnd = existing.position + existing.width;
    const newStart = newPosition;
    const newEnd = newPosition + appliance.width;
    return newStart < existingEnd && newEnd > existingStart;
  });

  if (!hasOverlap && newPosition >= 0 && newPosition + appliance.width <= islandLength.value) {
    placedAppliances.value[index] = {
      ...appliance,
      position: newPosition,
    };
  }
};

const removeAppliance = (index) => {
  placedAppliances.value.splice(index, 1);
};

const resetConfiguration = () => {
  placedAppliances.value = [];
  placedApplianceCounter.value = 0;
};

const exportConfiguration = () => {
  const config = {
    islandLength: islandLength.value,
    appliances: placedAppliances.value,
    totalCost: totalCost.value,
  };
  const blob = new Blob([JSON.stringify(config, null, 2)], { type: 'application/json' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = 'bbq-island-configuration.json';
  a.click();
  URL.revokeObjectURL(url);
};
</script>

<template>
  <div class="container mx-auto p-4">
    <h1 class="text-3xl font-bold mb-6">BBQ Island Configurator</h1>

    <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
      <div class="space-y-4">
        <div class="bg-white p-4 rounded-lg shadow">
          <label class="block text-sm font-medium text-gray-700">Island Length (inches)</label>
          <input
            type="number"
            v-model="islandLength"
            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
            min="48"
            max="240"
            step="1"
          />
        </div>

        <ApplianceList :appliances="appliances" :remainingSpace="remainingSpace" />
      </div>

      <div class="space-y-4">
        <IslandPreview
          :islandLength="islandLength"
          :placedAppliances="placedAppliances"
          @remove="removeAppliance"
          @drop="handleDrop"
          @update-position="updateAppliancePosition"
        />

        <div class="bg-white p-4 rounded-lg shadow">
          <h2 class="text-xl font-semibold mb-2">Summary</h2>
          <p>Remaining Space (Top): {{ remainingSpace.top }}"</p>
          <p>Remaining Space (Bottom): {{ remainingSpace.bottom }}"</p>
          <p>Total Cost: ${{ totalCost.toFixed(2) }}</p>

          <div class="mt-4 space-x-4">
            <button
              @click="resetConfiguration"
              class="bg-red-500 text-white px-4 py-2 rounded hover:bg-red-600"
            >
              Reset
            </button>
            <button
              @click="exportConfiguration"
              class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600"
            >
              Export Configuration
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
