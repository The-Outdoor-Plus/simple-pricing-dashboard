<script setup>
import { ref, computed } from 'vue'
import SelectButton from 'primevue/selectbutton'
import Dropdown from 'primevue/dropdown'
import InputNumber from 'primevue/inputnumber'

const shapes = [
  { label: 'Round', value: 'round', icon: 'pi pi-circle-fill' },
  { label: 'Square', value: 'square', icon: 'pi pi-stop' },
  { label: 'Rectangular', value: 'rectangular', icon: 'pi pi-tablet transform rotate-90' }
]

const materials = [
  { label: 'Fire Glass', value: 'fire_glass', density: 90.2, lbsPerBag: 25 }, // lbs per cubic foot
  // { label: 'Lava Rock', value: 'lava_rock', density: 80 },
  { label: 'Lava Chunks', value: 'lava_chunks', density: 45, lbsPerBag: 50 },
  { label: 'Polished Lava Rocks', value: 'polished_lava', density: 100, lbsPerBag: 50 }
]

const selectedShape = ref({
  label: 'Round',
  value: 'round',
  icon: 'pi pi-circle-fill'
})
const selectedMaterial = ref(materials[0])
const depth = ref(2) // inches
const diameter = ref(24) // inches
const width = ref(24) // inches
const length = ref(36) // inches

const result = computed(() => {
  let volume = 0 // cubic inches

  switch (selectedShape.value.value) {
    case 'round':
      volume = Math.PI * Math.pow(diameter.value / 2, 2) * depth.value
      break
    case 'square':
      volume = width.value * width.value * depth.value
      break
    case 'rectangular':
      volume = length.value * width.value * depth.value
      break
  }

  // Convert cubic inches to cubic feet and multiply by density
  const cubicFeet = volume / 1728 // 1728 cubic inches = 1 cubic foot
  const pounds = cubicFeet * selectedMaterial.value.density
  const bags = Math.ceil(pounds / selectedMaterial.value.lbsPerBag)

  return {
    pounds: Math.ceil(pounds),
    bags: bags,
    cubicFeet: cubicFeet.toFixed(2)
  }
})
</script>

<template>
  <div class="max-w-4xl mx-auto p-6">
    <div class="text-center mb-8">
      <h1 class="text-4xl font-bold mb-2">Fire Media Calculator</h1>
      <p class="text-gray-600">Calculate how much fire media you need for your fire feature!</p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
      <!-- Left Column - Inputs -->
      <div class="bg-white p-6 rounded-xl shadow-lg">
        <h2 class="text-xl font-semibold mb-4">Input Measurements</h2>

        <!-- Shape Selection -->
        <div class="mb-6">
          <label class="block text-sm font-medium mb-2">Shape</label>
          <div class="flex gap-2">
            <SelectButton v-model="selectedShape" :options="shapes" aria-labelledby="Shape">
              <template #option="{ option }">
                <i :class="option.icon" class="mr-1"></i>
                {{ option.label }}
              </template>
            </SelectButton>
          </div>
        </div>

        <!-- Material Selection -->
        <div class="mb-6">
          <label class="block text-sm font-medium mb-2">Material</label>
          <Dropdown v-model="selectedMaterial" :options="materials" optionLabel="label" class="w-full"
            placeholder="Select Material" />
        </div>

        <!-- Dimensions -->
        <div class="space-y-4">
          <div v-if="selectedShape.value === 'round'">
            <label class="block text-sm font-medium mb-2">Diameter (inches)</label>
            <InputNumber v-model="diameter" :min="1" :max="200" class="w-full" showButtons />
          </div>

          <div v-if="['square', 'rectangular'].includes(selectedShape.value)">
            <label class="block text-sm font-medium mb-2">Width (inches)</label>
            <InputNumber v-model="width" :min="1" :max="200" class="w-full" showButtons />
          </div>

          <div v-if="selectedShape.value === 'rectangular'">
            <label class="block text-sm font-medium mb-2">Length (inches)</label>
            <InputNumber v-model="length" :min="1" :max="200" class="w-full" showButtons />
          </div>

          <div>
            <label class="block text-sm font-medium mb-2">Depth (inches)</label>
            <InputNumber v-model="depth" :min="1" :max="12" class="w-full" showButtons />
          </div>
        </div>
      </div>

      <!-- Right Column - Results -->
      <div class="bg-white p-6 rounded-xl shadow-lg">
        <h2 class="text-xl font-semibold mb-4">Results</h2>

        <div class="bg-gray-50 rounded-lg p-6 text-center">
          <div class="mb-3">
            <span class="block text-4xl font-bold text-primary mb-2">
              {{ result.pounds }}
            </span>
            <span class="text-gray-600">Pounds Needed</span>
          </div>
          <div class="mb-6">
            <span class="block text-4xl font-bold text-primary mb-2">
              {{ result.bags }}
            </span>
            <span class="text-gray-600">Bags Needed</span>
          </div>

          <div class="text-sm text-gray-500">
            <p>Volume: {{ result.cubicFeet }} cubic feet</p>
          </div>
        </div>

        <div class="mt-6 p-4 bg-blue-50 rounded-lg">
          <h3 class="font-semibold mb-2">Tips</h3>
          <ul class="text-sm text-gray-600 list-disc list-inside">
            <li>It's recommended to order 10-15% extra material</li>
            <li>Depth should typically be 2-3 inches for best results</li>
            <li>Make sure your fire feature has proper drainage</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.p-selectbutton {
  @apply rounded-lg overflow-hidden;
}

.p-selectbutton .p-button {
  @apply px-4 py-2 transition-all duration-200;
}

.p-selectbutton .p-button.p-highlight {
  @apply bg-primary text-white;
}

:deep(.p-inputnumber) {
  @apply w-full;
}

:deep(.p-inputnumber-input) {
  @apply w-full;
}
</style>
