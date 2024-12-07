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

const emit = defineEmits(['remove', 'drop', 'update-position']);

const draggedAppliance = ref(null);
const dragStartX = ref(0);
const originalPosition = ref(0);

const getApplianceStyle = (appliance) => {
  const widthPercentage = (appliance.width / props.islandLength) * 100;
  const leftPosition = (appliance.position / props.islandLength) * 100;
  return {
    width: `${widthPercentage}%`,
    left: `${leftPosition}%`,
  };
};

const handleDrop = (event, section) => {
  event.preventDefault();
  const data = event.dataTransfer?.getData('application/json');
  if (!data) return;

  const appliance = JSON.parse(data);
  if (appliance.section !== section) return;

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

const onApplianceDragStart = (event, index, section) => {
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

  emit('update-position', draggedAppliance.value.index, newPosition);
};

const onApplianceDragEnd = () => {
  draggedAppliance.value = null;
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
      <div
        class="border-4 border-gray-300 h-48 relative mx-auto bg-gray-50"
        :style="`width: ${getCanvasLength}px; ${topColor?.imageUrl ? `background-image: url('${topColor.imageUrl}');` : ''}`"
        @dragover="handleDragOver"
        @drop="(e) => handleDrop(e, 'top')"
      >
        <div class="absolute top-0 left-0 p-1 text-xs bg-gray-200">Top Section</div>
        <template
          v-for="appliance in placedAppliances.filter((a) => a.section === 'top')"
          :key="appliance.instanceId"
        >
          <div
            v-if="!appliance.image"
            class="absolute top-7 bottom-0 bg-blue-200 border border-blue-400 cursor-move group"
            :style="getApplianceStyle(appliance)"
            draggable="true"
            @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'top',
              )
            "
            @drag="onApplianceDrag"
            @dragend="onApplianceDragEnd"
          >
            <div class="p-2 text-xs">
              <div>{{ appliance.name }}</div>
              <button
                @click="
                  emit(
                    'remove',
                    placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  )
                "
                class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2"
              >
                &times;
              </button>
            </div>
          </div>
          <div
            v-else
            class="absolute top-7 bottom-0 bg-blue-200 border border-blue-400 cursor-move group"
            :style="getApplianceStyle(appliance)"
            draggable="true"
            @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'top',
              )
            "
            @drag="onApplianceDrag"
            @dragend="onApplianceDragEnd"
          >
            <div class="text-xs w-full h-full relative flex flex-col">
              <img class="object-contain h-full w-auto mx-auto" :src="appliance.image" />
              <button
                @click="
                  emit(
                    'remove',
                    placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  )
                "
                class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2"
              >
                &times;
              </button>
            </div>
          </div>
        </template>
      </div>

      <!-- Bottom Section -->
      <div
        class="border-4 border-gray-300 h-48 relative mx-auto bg-gray-50"
        :style="`width: ${getCanvasLength}px; ${bottomColor?.imageUrl ? `background-image: url('${bottomColor.imageUrl}');` : ''}`"
        @dragover="handleDragOver"
        @drop="(e) => handleDrop(e, 'bottom')"
      >
        <div class="absolute top-0 left-0 p-1 text-xs bg-gray-200">Bottom Section</div>
        <template
          v-for="appliance in placedAppliances.filter((a) => a.section === 'bottom')"
          :key="appliance.instanceId"
        >
          <div
            v-if="!appliance.image"
            class="absolute top-7 bottom-0 bg-green-200 border border-green-400 cursor-move group"
            :style="getApplianceStyle(appliance)"
            draggable="true"
            @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'bottom',
              )
            "
            @drag="onApplianceDrag"
            @dragend="onApplianceDragEnd"
          >
            <div class="p-2 text-xs">
              <div>{{ appliance.name }}</div>
              <button
                @click="
                  emit(
                    'remove',
                    placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  )
                "
                class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2"
              >
                &times;
              </button>
            </div>
          </div>
          <div
            v-else
            class="absolute top-7 bottom-0 bg-blue-200 border border-blue-400 cursor-move group"
            :style="getApplianceStyle(appliance)"
            draggable="true"
            @dragstart="
              onApplianceDragStart(
                $event,
                placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                'top',
              )
            "
            @drag="onApplianceDrag"
            @dragend="onApplianceDragEnd"
          >
            <div class="text-xs w-full h-full relative flex flex-col">
              <img class="object-contain h-full w-auto mx-auto" :src="appliance.image" />
              <button
                @click="
                  emit(
                    'remove',
                    placedAppliances.findIndex((a) => a.instanceId === appliance.instanceId),
                  )
                "
                class="hidden group-hover:block mt-2 bg-red-500 text-white px-2 py-1 rounded text-xs absolute top-0 right-0 transform translate-x-1/2 -translate-y-1/2"
              >
                &times;
              </button>
            </div>
          </div>
        </template>
      </div>
    </div>

    <div class="mt-2 text-sm text-gray-600">Scale: {{ islandLength }}" total length</div>
  </div>
</template>
