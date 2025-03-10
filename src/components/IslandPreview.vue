<script setup>
import { defineProps, defineEmits, ref, computed } from 'vue';

const props = defineProps({
  islandLength: {
    type: Number,
    required: true,
    default: 0,
  },
  placedAppliances: {
    type: Array,
    required: true,
    default: () => [],
  },
  topColor: {
    type: Object,
    required: true,
    default: () => ({
      id: '',
      name: '',
      imageUrl: null,
    }),
  },
  bottomColor: {
    type: Object,
    required: true,
    default: () => ({
      id: '',
      name: '',
      imageUrl: null,
    }),
  },
});

const emit = defineEmits(['remove', 'drop', 'update-position', 'swap-appliances']);

const draggedAppliance = ref(null);
const dragStartX = ref(0);
const originalPosition = ref(0);
const potentialSwapTarget = ref(null);

// Helper function to get the total width of an appliance (physical width + gap)
const getTotalWidth = (appliance) => {
  return appliance.width + (appliance.gap || 0);
};

const getApplianceStyle = (appliance) => {
  // Use the total width (physical width + gap) for the overall appliance container
  const totalWidth = getTotalWidth(appliance);
  const widthPercentage = (totalWidth / props.islandLength) * 100;
  const leftPosition = (appliance.position / props.islandLength) * 100;
  return {
    width: `${widthPercentage}%`,
    left: `${leftPosition}%`,
  };
};

// New function to style the inner content (the actual appliance, without the gap)
const getApplianceInnerStyle = (appliance) => {
  // If there's no gap, just fill the whole container
  if (!appliance.gap) return { width: '100%' };

  // Calculate the gap distribution
  const halfGap = appliance.gap / 2;
  const innerWidth = (appliance.width / getTotalWidth(appliance)) * 100;

  // Return style with the physical width centered inside the total width
  return {
    width: `${innerWidth}%`,
    margin: `0 ${halfGap}px`, // This will add the gap evenly to both sides
    height: '100%',
    border: '1px dashed rgba(0,0,0,0.3)',
    backgroundColor: 'rgba(255,255,255,0.5)',
  };
};

const handleDrop = (event, section) => {
  event.preventDefault();
  const data = event.dataTransfer?.getData('application/json');
  if (!data) return;

  const appliance = JSON.parse(data);

  // Ensure the appliance can only be dropped in its designated section
  if (appliance.section !== section) {
    console.log(`Can't drop a ${appliance.section} item in the ${section} section.`);
    return;
  }

  const rect = event.currentTarget.getBoundingClientRect();
  const dropX = event.clientX - rect.left;
  const position = Math.round((dropX / rect.width) * props.islandLength);

  emit('drop', appliance, position, section);
};

const handleDragOver = (event) => {
  event.preventDefault();
  if (event.dataTransfer) {
    event.dataTransfer.dropEffect = 'move';
  }
};

const handleDragEnter = (event) => {
  // This helps ensure the drag and drop system knows this is a valid target
  event.preventDefault();
  if (event.dataTransfer) {
    event.dataTransfer.dropEffect = 'move';
  }
};

const onApplianceDragStart = (event, index, section) => {
  potentialSwapTarget.value = null;
  draggedAppliance.value = { index, section };
  dragStartX.value = event.clientX;
  originalPosition.value = props.placedAppliances[index].position;

  if (event.dataTransfer) {
    event.dataTransfer.effectAllowed = 'move';
  }
};

const onApplianceDrag = (event) => {
  if (draggedAppliance.value === null || !event.clientX) return;

  const deltaX = event.clientX - dragStartX.value;
  const deltaPosition = Math.round(
    (deltaX / event.currentTarget.parentElement.offsetWidth) * props.islandLength,
  );
  const newPosition = originalPosition.value + deltaPosition;

  // Just update position temporarily during drag without checking for swaps
  emit('update-position', draggedAppliance.value.index, newPosition);
};

const onApplianceDragOver = (event, overIndex, section) => {
  event.preventDefault();
  event.stopPropagation();

  // Don't allow swaps between different sections
  if (draggedAppliance.value && draggedAppliance.value.section === section &&
    draggedAppliance.value.index !== overIndex) {
    potentialSwapTarget.value = overIndex;
  }
};

const onApplianceDragEnd = () => {
  // If we have a potential swap target when drag ends, emit a custom event to handle the swap
  if (potentialSwapTarget.value !== null && draggedAppliance.value !== null) {
    emit('swap-appliances', draggedAppliance.value.index, potentialSwapTarget.value);
  }

  // Reset state
  draggedAppliance.value = null;
  potentialSwapTarget.value = null;
};

const getCanvasLength = computed(() => {
  return Math.round(props.islandLength * 10);
});
</script>

<template>
  <div class="bg-white p-4 rounded-lg shadow">
    <h2 class="text-xl font-semibold mb-4">Island Preview</h2>

    <div class="space-y-4 overflow-x-auto pb-4">
      <!-- Top Section -->
      <div class="border-4 border-gray-300 h-48 relative mx-auto bg-gray-50"
        :style="`width: ${getCanvasLength}px; ${topColor?.imageUrl ? `background-image: url('${topColor.imageUrl}');` : ''}`"
        @dragover="handleDragOver" @dragenter="handleDragEnter" @drop="(e) => handleDrop(e, 'top')">
        <div class="absolute top-0 left-0 p-1 text-xs bg-gray-200">Top Section</div>
        <template v-for="appliance in placedAppliances.filter((a) => a.section === 'top')" :key="appliance.instanceId">
          <div v-if="!appliance.image"
            class="absolute top-7 bottom-0 bg-blue-100 cursor-move group flex items-center justify-center"
            :class="{ 'ring-2 ring-yellow-500': potentialSwapTarget !== null && potentialSwapTarget === placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId) }"
            :style="getApplianceStyle(appliance)" draggable="true" @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'top',
              )
              " @dragover="
                onApplianceDragOver(
                  $event,
                  placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  'top',
                )
                " @drag="onApplianceDrag" @dragend="onApplianceDragEnd">
            <!-- Inner div to represent the physical appliance (without gap) -->
            <div class="h-full bg-blue-200 border border-blue-400 flex justify-center items-center"
              :style="getApplianceInnerStyle(appliance)">
              <div class="p-2 text-xs">
                <div>{{ appliance.name }}</div>
                <div v-if="appliance.gap" class="text-xs text-gray-500">
                  W: {{ appliance.width }}" (+{{ appliance.gap }}" gap)
                </div>
              </div>
            </div>
            <button @click="
              emit(
                'remove',
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
              )
              "
              class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2">
              &times;
            </button>
          </div>
          <div v-else class="absolute top-7 bottom-0 bg-blue-100 cursor-move group flex items-center justify-center"
            :class="{ 'ring-2 ring-yellow-500': potentialSwapTarget !== null && potentialSwapTarget === placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId) }"
            :style="getApplianceStyle(appliance)" draggable="true" @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'top',
              )
              " @dragover="
                onApplianceDragOver(
                  $event,
                  placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  'top',
                )
                " @drag="onApplianceDrag" @dragend="onApplianceDragEnd">
            <!-- Inner div to represent the physical appliance (without gap) -->
            <div class="h-full bg-blue-200 border border-blue-400 flex justify-center items-center"
              :style="getApplianceInnerStyle(appliance)">
              <div class="text-xs w-full h-full relative flex flex-col">
                <img class="object-contain h-full w-auto mx-auto" :src="appliance.image" />
                <div v-if="appliance.gap"
                  class="text-xs text-gray-500 absolute bottom-0 w-full text-center bg-white bg-opacity-50">
                  +{{ appliance.gap }}" gap
                </div>
              </div>
            </div>
            <button @click="
              emit(
                'remove',
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
              )
              "
              class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2">
              &times;
            </button>
          </div>
        </template>
      </div>

      <!-- Bottom Section -->
      <div class="border-4 border-gray-300 h-48 relative mx-auto bg-gray-50"
        :style="`width: ${getCanvasLength}px; ${bottomColor?.imageUrl ? `background-image: url('${bottomColor.imageUrl}');` : ''}`"
        @dragover="handleDragOver" @dragenter="handleDragEnter" @drop="(e) => handleDrop(e, 'bottom')">
        <div class="absolute top-0 left-0 p-1 text-xs bg-gray-200">Bottom Section</div>
        <template v-for="appliance in placedAppliances.filter((a) => a.section === 'bottom')"
          :key="appliance.instanceId">
          <div v-if="!appliance.image"
            class="absolute top-7 bottom-0 bg-green-100 cursor-move group flex items-center justify-center"
            :class="{ 'ring-2 ring-yellow-500': potentialSwapTarget !== null && potentialSwapTarget === placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId) }"
            :style="getApplianceStyle(appliance)" draggable="true" @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'bottom',
              )
              " @dragover="
                onApplianceDragOver(
                  $event,
                  placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  'bottom',
                )
                " @drag="onApplianceDrag" @dragend="onApplianceDragEnd">
            <!-- Inner div to represent the physical appliance (without gap) -->
            <div class="h-full bg-green-200 border border-green-400 flex justify-center items-center"
              :style="getApplianceInnerStyle(appliance)">
              <div class="p-2 text-xs">
                <div>{{ appliance.name }}</div>
                <div v-if="appliance.gap" class="text-xs text-gray-500">
                  W: {{ appliance.width }}" (+{{ appliance.gap }}" gap)
                </div>
              </div>
            </div>
            <button @click="
              emit(
                'remove',
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
              )
              "
              class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2">
              &times;
            </button>
          </div>
          <div v-else class="absolute top-7 bottom-0 bg-green-100 cursor-move group flex items-center justify-center"
            :class="{ 'ring-2 ring-yellow-500': potentialSwapTarget !== null && potentialSwapTarget === placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId) }"
            :style="getApplianceStyle(appliance)" draggable="true" @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'bottom',
              )
              " @dragover="
                onApplianceDragOver(
                  $event,
                  placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  'bottom',
                )
                " @drag="onApplianceDrag" @dragend="onApplianceDragEnd">
            <!-- Inner div to represent the physical appliance (without gap) -->
            <div class="h-full bg-green-200 border border-green-400 flex justify-center items-center"
              :style="getApplianceInnerStyle(appliance)">
              <div class="text-xs w-full h-full relative flex flex-col">
                <img class="object-contain h-full w-auto mx-auto" :src="appliance.image" />
                <div v-if="appliance.gap"
                  class="text-xs text-gray-500 absolute bottom-0 w-full text-center bg-white bg-opacity-50">
                  +{{ appliance.gap }}" gap
                </div>
              </div>
            </div>
            <button @click="
              emit(
                'remove',
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
              )
              "
              class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2">
              &times;
            </button>
          </div>
        </template>
      </div>
    </div>

    <div class="mt-2 text-sm text-gray-600">Scale: {{ islandLength }}" total length</div>

    <p class="mt-3 italic w-full md:w-8/12 justify-center items-center mx-auto text-center disclaimer">
      <span class="font-bold text-red-600">Disclaimer:</span> The visual representation provided in this configurator is
      for illustrative purposes only and may not accurately reflect the final product. Our company reserves the right
      to modify the design and visual elements in the final render to align with product specifications and island
      requirements. Additionally, the pricing shown serves as an estimate and is subject to change based on final
      specifications, material availability, and other factors.
    </p>
  </div>
</template>
