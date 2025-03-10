<template>
  <div class="flex flex-col justify-center items-center w-full gap-y-8">
    <div class="w-full flex flex-col items-start">
      <!-- <Button label="Go Back" icon="pi pi-arrow-left" variant="text" severity="contrast" class="self-start mb-4 -ml-3"
        size="large" @click="router.push('/')"></Button> -->
      <h2 class="text-2xl font-bold mb-4">Custom BBQ Island Configurator</h2>
      <!-- <Steps :model="steps" :readonly="false" class="w-full" /> -->
      <Stepper v-model:value="currentStep" class="w-full" linear>
        <StepList>
          <Step v-for="(step, i) in steps" :value="`${i + 1}`" :key="step.label">
            {{ step.label }}
          </Step>
        </StepList>
        <StepPanels class="bg-gray-50">
          <StepPanel v-slot="{ activateCallback }" value="1">
            <!-- Step 1: Island Shape -->
            <div class="w-full bg-gray-50">
              <h3 class="text-xl font-semibold mb-4">Select Island Shape</h3>
              <div class="flex flex-col gap-4">
                <div class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500"
                  :class="{ 'border-blue-500 bg-blue-50': selectedShape === 'linear' }" @click="selectShape('linear')">
                  <div class="flex items-center gap-4">
                    <i class="pi pi-minus text-2xl"></i>
                    <div>
                      <h4 class="text-lg font-medium">Linear Island</h4>
                      <p class="text-gray-600">
                        A straight-line design perfect for any outdoor space
                      </p>
                    </div>
                  </div>
                </div>
                <div class="p-4 border rounded-lg cursor-not-allowed transition-all opacity-70"
                  :class="{ 'border-blue-500 bg-blue-50': selectedShape === 'l-shaped' }">
                  <div class="flex items-center gap-4">
                    <i class="pi pi-chevron-left text-2xl -rotate-45"></i>
                    <div>
                      <h4 class="text-lg font-medium">L-Shaped Island</h4>
                      <p class="text-gray-600">
                        A L-Shaped design perfect for any outdoor space
                      </p>
                      <span class="italic">Coming Soon</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-end mt-8 bg-gray-50">
              <Button :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed" @click="activateCallback('2')" severity="success" />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="2">
            <!-- Step 2: Island Size -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Island Dimensions</h3>
              <div class="flex flex-col gap-4">
                <div class="flex flex-col gap-2">
                  <label class="font-medium">Length (Inches)</label>
                  <p class="text-gray-600 text-sm">Minimum 36 inches (3 feet) and Maximum 168 inches (14 feet)</p>
                  <InputNumber v-model="length" :min="36" :max="168" :min-fraction-digits="1" :max-fraction-digits="2"
                    placeholder="Enter length in inches. Minimum 36 inches (3 feet) and Maximum 168 inches (14 feet)"
                    mode="decimal" class="w-full md:w-1/2" />
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                  <div class="p-4 border rounded-lg bg-gray-50">
                    <p class="font-medium">Height</p>
                    <p class="text-gray-600">36 inches (Standard)</p>
                  </div>
                  <div class="p-4 border rounded-lg bg-gray-50">
                    <p class="font-medium">Depth</p>
                    <!-- <p class="text-gray-600">{{ getDepth }} (Standard)</p> -->
                    <p class="text-gray-600">30 inches (Standard)</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button :label="'Previous'" :icon="'pi pi-arrow-left'" @click="activateCallback('1')"
                :disabled="Number(currentStep) === 0" outlined />
              <Button :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed" @click="activateCallback('3')" severity="success" />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="3">
            <!-- Step 3: Top Style -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Top Style</h3>
              <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div v-for="style in topStyles" :key="style.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500"
                  :class="{ 'border-blue-500 bg-blue-50': selectedTopStyle === style.id }"
                  @click="selectTopStyle(style.id)">
                  <h4 class="text-lg font-medium">{{ style.name }}</h4>
                  <p class="text-gray-600">{{ style.description }}</p>
                  <p class="mt-2 font-semibold">
                    {{ style.price === 0 ? 'Included' : `+$${style.price}/ft` }}
                  </p>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button :label="'Previous'" :icon="'pi pi-arrow-left'" @click="activateCallback('2')"
                :disabled="Number(currentStep) === 0" outlined />
              <Button :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed" @click="activateCallback('4')" severity="success" />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="4">
            <!-- Step 4: Colors -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Top Color</h3>
              <div class="grid grid-cols-3 md:grid-cols-6 lg:grid-cols-8 gap-4">
                <div v-for="color in colors" :key="color.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500 flex flex-col"
                  :class="{ 'border-blue-500 bg-blue-50': selectedTopColor === color.id }"
                  @click="selectTopColor(color.id)">
                  <img :src="color.imageUrl" :alt="color.name" class="w-16 h-16 mx-auto object-contain" />
                  <h4 class="text-lg font-medium text-center mt-auto">{{ color.name }}</h4>
                </div>
              </div>
              <h3 class="text-xl font-semibold mt-6 mb-4">Select Bottom Color</h3>
              <div class="grid grid-cols-3 md:grid-cols-6 lg:grid-cols-8 gap-4">
                <div v-for="color in colors" :key="color.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500 flex flex-col"
                  :class="{ 'border-blue-500 bg-blue-50': selectedBottomColor === color.id }"
                  @click="selectBottomColor(color.id)">
                  <img :src="color.imageUrl" :alt="color.name" class="w-16 h-16 mx-auto object-contain" />
                  <h4 class="text-lg font-medium text-center mt-auto">{{ color.name }}</h4>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button :label="'Previous'" :icon="'pi pi-arrow-left'" @click="activateCallback('3')"
                :disabled="Number(currentStep) === 0" outlined />
              <Button :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed" @click="activateCallback('5')" severity="success" />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="5">
            <!-- Step 5: Components -->
            <div class="w-full">
              <ApplianceList :appliances="appliances" :remainingSpace="remainingSpace" class="mb-6"
                @add-appliance="handleAddAppliance" />
              <IslandPreview :islandLength="islandLength" :placedAppliances="placedAppliances"
                :top-color="getSelectedTopStyleColor" :bottom-color="getSelectedBottomStyleColor"
                @remove="removeAppliance" @drop="handleDrop" @update-position="updateAppliancePosition"
                @swap-appliances="swapAppliances" class="island-preview-container" />
              <AddOnsList :addOns="addOns" :selectedAddOns="selectedAddOns"
                @update-selected-add-ons="updateSelectedAddOns" />
            </div>
            <!-- Order Summary -->
            <div v-show="Number(currentStep) > 4"
              class="w-full mt-8 py-6 px-4 lg:p-6 border rounded-lg bg-white shadow-md quote-summary">
              <div class="w-full flex mb-4 justify-between items-center">
                <h3 class="w-6/12 lg:w-7/12 text-xl font-semibold mb-0 pr-3 lg:pr-0">Quote Summary</h3>
                <div class="flex items-center gap-4">
                  <h3 class="text-xl font-semibold mb-0 text-right">Cost</h3>
                  <Button type="button" icon="pi pi-file-pdf" label="Download PDF" severity="secondary"
                    @click="handleDownloadPdf" />
                </div>
              </div>
              <Divider />
              <div class="w-full flex flex-col gap-3 text-lg">
                <div v-if="selectedShape" class="w-full flex justify-between">
                  <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
                    <span class="font-bold">{{ (length / 12).toFixed(2) }} ft ({{ length }}") Linear Island</span>
                    <br><br>
                    <span class="font-semibold">Top Color: {{ getSelectedTopStyleColor?.name }}</span>
                    <br>
                    <span class="font-semibold">Bottom Color: {{ getSelectedBottomStyleColor?.name }}</span>
                    <br>
                    <span class="text-sm">{{ length }}"(L) &times; 30"(D) &times; 36"(H)</span>
                    <br>
                    <span class="text-sm">
                      {{ formatPrice(235) }} &times; {{ (length /
                        12).toFixed(2) }} ft
                    </span>
                  </div>
                  <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">{{
                    formatPrice(basePrice)
                  }}</span>
                </div>

                <div v-if="selectedTopStyle && topStylePrice > 0" class="flex justify-between">
                  <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
                    <span class="font-semibold">{{ getSelectedTopStyle?.name }}</span>
                    <br />
                    <span class="text-sm">
                      {{ formatPrice(getSelectedTopStyle?.price) }} &times; {{ (length /
                        12).toFixed(2) }} ft
                    </span>
                  </div>
                  <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">+{{ formatPrice(topStylePrice) }}</span>
                </div>

                <div class="text-sm italic">VG-CUSTOM</div>

                <template v-if="selectedAccessoriesList.length > 0">
                  <Divider />
                  <h4 class="font-medium">Selected Accessories:</h4>
                  <div v-for="accessory in selectedAccessoriesList" :key="accessory.id" class="flex justify-between">
                    <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
                      <span class="font-semibold">{{ accessory.name }}</span> <br>
                      <span class="text-gray-700 italic text-sm"> {{ accessory.sku }}</span>
                    </div>
                    <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">+{{ formatPrice(accessory.price)
                    }}</span>
                  </div>
                </template>

                <template v-if="selectedAppliancesList.length > 0">
                  <Divider />
                  <h4 class="font-medium">Selected Appliances:</h4>
                  <div v-for="appliance in selectedAppliancesList" :key="appliance.id" class="flex justify-between">
                    <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
                      <span class="font-semibold">{{ appliance.name }}</span> <br>
                      <span class="text-gray-700 italic text-sm"> {{ appliance.sku }}</span>
                    </div>
                    <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">+{{ formatPrice(appliance.price)
                    }}</span>
                  </div>
                </template>

                <template v-if="selectedAddOns.length > 0">
                  <Divider />
                  <h4 class="font-medium">Selected Add-Ons:</h4>
                  <div v-for="addOn in selectedAddOns" :key="addOn.id" class="flex justify-between">
                    <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
                      <span class="font-bold">{{ addOn.name }}</span> <span class="text-gray-500">× {{ addOn.quantity
                        }}</span>
                    </div>
                    <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">+{{ formatPrice(addOn.price *
                      addOn.quantity)
                    }}</span>
                  </div>
                </template>

                <Divider />
                <div class="flex justify-between text-xl font-bold">
                  <span class="w-6/12 lg:w-7/12 pr-3 lg:pr-0 font-bold">Total Price</span>
                  <span class="w-6/12 lg:w-5/12 text-right font-medium px-3">{{
                    formatPrice(totalPrice)
                  }}</span>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button :label="'Previous'" :icon="'pi pi-arrow-left'" @click="activateCallback('4')"
                :disabled="Number(currentStep) === 0" outlined />
              <Button v-if="Number(currentStep) !== steps.length"
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed" @click="activateCallback('6')" severity="success" />
            </div>
          </StepPanel>
        </StepPanels>
      </Stepper>
    </div>

    <div class="w-full mt-4">

    </div>

    <!-- Navigation Buttons -->
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue';
import { useRouter } from 'vue-router';
import ApplianceList from '@/components/ApplianceList.vue';
import IslandPreview from '@/components/IslandPreview.vue';
import AddOnsList from '@/components/AddOnsList.vue';
import { useBbqIslandPdf } from '@/composables/bbqIslandPdf';

const router = useRouter();
const { downloadBbqIslandPdf } = useBbqIslandPdf();

// Variables for auto-scroll during drag
const autoScrollThreshold = 100; // pixels from edge to trigger scroll
const autoScrollSpeed = 15; // pixels per frame to scroll
let isAutoscrolling = false;
let scrollIntervalId = null;

// Steps configuration
const steps = [
  { label: 'Shape' },
  { label: 'Size' },
  { label: 'Top Style' },
  { label: 'Island Colors' },
  { label: 'Components' },
];

const currentStep = ref('1');
const selectedShape = ref('');
const length = ref(null);
const selectedTopStyle = ref('flat');
const selectedAccessories = ref([]);
const selectedAppliances = ref([]);
const selectedTopColor = ref('');
const selectedBottomColor = ref('');

const selectedApplianceIds = ref([]);
const placedAppliances = ref([]);

// Top Styles Data
const topStyles = [
  {
    id: 'flat',
    name: 'Flat Top',
    description: 'Standard flat surface design',
    price: 0,
    depth: 30,
  },
  {
    id: 'backsplash',
    name: 'Backsplash',
    description: 'Added height at the back',
    price: 35,
    depth: 36,
  },
  {
    id: 'bartop',
    name: 'Bar Top',
    description: 'Extended counter for seating',
    price: 60,
    depth: 42,
  },
];

const colors = [
  {
    id: 'gold-vein',
    name: 'Gold Vein',
    imageUrl:
      'https://www.dropbox.com/scl/fi/zkkofkil7p9ij5zfo5daa/01_Gold-Vein.webp?rlkey=7jpm811gql9br31itv603sslm&st=ci1joukx&raw=1',
  },
  {
    id: 'sapphire-blue',
    name: 'Sapphire Blue',
    imageUrl:
      'https://www.dropbox.com/scl/fi/kxiqwob2xvw1d23eu194n/02_Sapphire-Blue.webp?rlkey=8kr3d35i3y9d6c7gbrvgi7zhw&st=xbwowuv7&raw=1',
  },
  {
    id: 'java',
    name: 'Java',
    imageUrl:
      'https://www.dropbox.com/scl/fi/nujeb0yai10l93i3mndcr/03_Java.webp?rlkey=zxvx7eymqldh159oxd6s7vg2x&st=qu0s0v88&raw=1',
  },
  {
    id: 'silver-vein',
    name: 'Silver Vein',
    imageUrl:
      'https://www.dropbox.com/scl/fi/nvcr40jelgsviy90qrbp6/04_Silver-Vein.webp?rlkey=2rjoxn0dgchw7y7ja7ccsmiqm&st=9k4y0o6j&raw=1',
  },
  {
    id: 'white-vein',
    name: 'White Vein',
    imageUrl:
      'https://www.dropbox.com/scl/fi/i3vz8aiq9qxzu556dqmp7/05_White-Vein.webp?rlkey=1idn7unjgng0ril6rklhhlx7z&st=zma0qsuo&raw=1',
  },
  {
    id: 'copper-vein',
    name: 'Copper Vein',
    imageUrl:
      'https://www.dropbox.com/scl/fi/kuqh5ms982eeqspnjoml4/06_Copper-Vein.webp?rlkey=7yb1c14r08yag65hfwy1gx8z2&st=i6bpz0m1&raw=1',
  },
  {
    id: 'matte-black',
    name: 'Matte Black',
    imageUrl:
      'https://www.dropbox.com/scl/fi/x3in775sqelmh17kxdbry/07_Onyx-Black-Matte.webp?rlkey=vaogq8ag24mdajm3orp4hj4du&st=u7d48mv8&raw=1',
  },
  {
    id: 'bronze-hammertone',
    name: 'Bronze Hammertone',
    imageUrl:
      'https://www.dropbox.com/scl/fi/4tulc6ly3avwq8hq2tmk1/09_Bronze-Hammertone.webp?rlkey=ufdq5rkr9mdmsg5dgwmqh4d1y&st=ms2htg4j&raw=1',
  },
  {
    id: 'olive-green',
    name: 'Olive Green',
    imageUrl:
      'https://www.dropbox.com/scl/fi/iqwl8l6dw9up497h26r2q/10_Olive-Green.webp?rlkey=ie0emm2djkh637hevwjfupg3v&st=qchd1l9b&raw=1',
  },
  {
    id: 'gray',
    name: 'Gray',
    imageUrl:
      'https://www.dropbox.com/scl/fi/ph2576tkmdzwchvjpzjiv/12_Gray.webp?rlkey=87i51sdi2jiy3ptxxr5vcy6x4&st=y5k5aa0p&raw=1',
  },
  {
    id: 'mist',
    name: 'Mist',
    imageUrl:
      'https://www.dropbox.com/scl/fi/velargkj4avuq7z0eg4ya/13_Mist.webp?rlkey=606fmslk414dzyo3ybtkxgd0x&st=75f62g81&raw=1',
  },
  {
    id: 'soft-white',
    name: 'Soft White',
    imageUrl:
      'https://www.dropbox.com/scl/fi/454dbthayun6peots0z2y/14_Soft-White.webp?rlkey=5iwut4fz1bvjvzynhx8j3wo41&st=y5ulvdxg&raw=1',
  },
  {
    id: 'white',
    name: 'White',
    imageUrl:
      'https://www.dropbox.com/scl/fi/6npufrxjmmyz55atom0w2/15_White.webp?rlkey=n90jlbbtmshu1ww9mjocpqcrr&st=nffttewb&raw=1',
  },
];

const appliances = computed(() => {
  return [...mainAppliances.value, ...accessories.value];
});

const placedApplianceCounter = ref(0);

const removeAppliance = (index) => {
  placedAppliances.value.splice(index, 1);
};

const updateAppliancePosition = (index, newPosition) => {
  const appliance = placedAppliances.value[index];
  const sectionAppliances = placedAppliances.value.filter(
    (a, i) => a.section === appliance.section && i !== index,
  );

  // If the new position would cause the appliance to exceed the island length,
  // cap it at the maximum possible position
  if (newPosition + getTotalWidth(appliance) > islandLength.value) {
    newPosition = islandLength.value - getTotalWidth(appliance);
  }

  // If the new position is negative, set it to 0
  if (newPosition < 0) {
    newPosition = 0;
  }

  // Check for overlaps with other appliances
  const hasOverlap = sectionAppliances.some((existing) => {
    const existingStart = existing.position;
    const existingEnd = existing.position + getTotalWidth(existing);
    const newStart = newPosition;
    const newEnd = newPosition + getTotalWidth(appliance);
    return newStart < existingEnd && newEnd > existingStart;
  });

  // Only update the position if there's no overlap
  if (!hasOverlap) {
    placedAppliances.value[index] = {
      ...appliance,
      position: newPosition,
    };
  }
};

const handleDrop = (appliance, position, section) => {
  // Check if there's enough remaining space in the section
  if (remainingSpace.value[section] >= getTotalWidth(appliance)) {
    // If the position where we drop would cause the appliance to exceed the section length,
    // find the first available position instead
    if (position + getTotalWidth(appliance) > islandLength.value) {
      // Find first available position in the section (similar to Add button behavior)
      const sectionAppliances = placedAppliances.value.filter((a) => a.section === section);
      let newPosition = 0;
      let found = false;

      while (!found && newPosition + getTotalWidth(appliance) <= islandLength.value) {
        const hasOverlap = sectionAppliances.some((existing) => {
          const existingStart = existing.position;
          const existingEnd = existing.position + getTotalWidth(existing);
          const dropStart = newPosition;
          const dropEnd = newPosition + getTotalWidth(appliance);
          return dropStart < existingEnd && dropEnd > existingStart;
        });

        if (!hasOverlap) {
          found = true;
        } else {
          newPosition++;
        }
      }

      if (found) {
        position = newPosition;
      } else {
        // If we couldn't find a position, don't add the appliance
        return;
      }
    } else {
      // Check for overlap with existing appliances
      const sectionAppliances = placedAppliances.value.filter((a) => a.section === section);
      const hasOverlap = sectionAppliances.some((existing) => {
        const existingStart = existing.position;
        const existingEnd = existing.position + getTotalWidth(existing);
        const dropStart = position;
        const dropEnd = position + getTotalWidth(appliance);
        return dropStart < existingEnd && dropEnd > existingStart;
      });

      // If there's an overlap, find the first available position
      if (hasOverlap) {
        let newPosition = 0;
        let found = false;

        while (!found && newPosition + getTotalWidth(appliance) <= islandLength.value) {
          const hasOverlapAtNew = sectionAppliances.some((existing) => {
            const existingStart = existing.position;
            const existingEnd = existing.position + getTotalWidth(existing);
            const dropStart = newPosition;
            const dropEnd = newPosition + getTotalWidth(appliance);
            return dropStart < existingEnd && dropEnd > existingStart;
          });

          if (!hasOverlapAtNew) {
            found = true;
          } else {
            newPosition++;
          }
        }

        if (found) {
          position = newPosition;
        } else {
          // If we couldn't find a position, don't add the appliance
          return;
        }
      }
    }

    // Only add the appliance if position is valid
    if (position >= 0 && position + getTotalWidth(appliance) <= islandLength.value) {
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

// Accessories Data
const accessories = ref([
  {
    id: '18-single-access-door',
    name: '18" Single Access Door',
    description: 'Access door for storage',
    price: 189,
    type: 'accessory',
    width: 18,
    gap: 3,
    section: 'bottom',
    sku: 'DG-18SD',
  },
  {
    id: 'multi-function-door',
    name: 'Multi-Function Door',
    description: 'Multi-Function Door',
    price: 315,
    type: 'accessory',
    width: 16.5,
    gap: 3,
    section: 'bottom',
    sku: 'DG-MFD',
  },
  {
    id: 'triple-access-door',
    name: 'Triple Access Door',
    description: 'Triple Access Door',
    price: 492,
    type: 'accessory',
    width: 13,
    gap: 3,
    section: 'bottom',
    sku: 'DG-3D',
  },
  {
    id: '33-combo-door-drawer',
    name: '33" Combo Door & Drawer',
    description: 'Combo Door & Drawer',
    price: 595,
    type: 'accessory',
    width: 33,
    gap: 3,
    section: 'bottom',
    sku: 'DG-36DC',
  },
  {
    id: '30-double-door',
    name: '30" Double Door',
    description: 'Access door for storage',
    price: 345,
    type: 'accessory',
    width: 30,
    gap: 3,
    section: 'bottom',
    sku: 'DG-30DD',
  },
  {
    id: '36-double-door',
    name: '36" Double Door',
    description: 'Access door for storage',
    price: 389,
    type: 'accessory',
    width: 36,
    gap: 3,
    section: 'bottom',
    sku: 'DG-36DD',
  },
  {
    id: '42-double-door',
    name: '42" Double Door',
    description: 'Access door for storage',
    price: 479,
    type: 'accessory',
    width: 42,
    gap: 3,
    section: 'bottom',
    sku: 'DG-42DD',
  },
  {
    id: '4.5cu-ft-fridge',
    name: '4.5cu ft. Refrigerator',
    description: '4.5cu ft. Refrigerator',
    price: 342,
    type: 'accessory',
    width: 20.5,
    gap: 3,
    section: 'bottom',
    sku: 'DG-R20',
  },
  {
    id: 'stainless-steel-outdoor-fridge',
    name: 'Stainless Steel Outdoor Fridge',
    description: 'Stainless Steel Outdoor Fridge',
    price: 1150,
    type: 'accessory',
    width: 23.375,
    gap: 3,
    section: 'bottom',
    sku: 'DG-R32FRG',
  },
  {
    id: 'spice-rack',
    name: 'Spice Rack',
    description: 'Spice Rack',
    price: 495,
    type: 'accessory',
    width: 10.875,
    gap: 3,
    section: 'bottom',
    sku: 'DG-11SR',
  },
]);

// Appliances Data
const mainAppliances = ref([
  {
    id: '36-grill',
    name: '36" Grill',
    description: '36" 4 Burner Gran Fuego Built-In BBQ Grill',
    type: 'appliance',
    section: 'top',
    price: 1595,
    width: 36,
    gap: 3,
    sku: 'DG-4B36',
  },
  {
    id: '42-grill',
    name: '42" Grill',
    description: '42" 5 Burner Gran Fuego Built-In BBQ Grill',
    type: 'appliance',
    section: 'top',
    price: 2150,
    width: 42,
    gap: 3,
    sku: 'DG-5B42',
  },
  {
    id: '36-commercial-grill',
    name: '36" Commercial Grill',
    description: '36" 4 Burner Commercial Grill With Timer',
    type: 'appliance',
    section: 'top',
    price: 1995,
    width: 36,
    gap: 3,
    sku: 'DG-3B36',
  },
  {
    id: 'griddle',
    name: '30" Griddle',
    description: '30" Flat Top Griddle - Gran Plancha',
    type: 'appliance',
    section: 'top',
    price: 1599,
    width: 30,
    gap: 3,
    sku: 'DG-G30',
  },
  {
    id: 'side-burner',
    name: 'Double Side Burner',
    type: 'appliance',
    description: 'Double Side Burner',
    section: 'top',
    price: 735,
    width: 13,
    gap: 3,
    sku: 'VD-DSB',
  },
  {
    id: 'power-burner',
    name: 'Power Burner',
    type: 'appliance',
    description: 'Power Burner',
    section: 'top',
    price: 1095,
    width: 19.5,
    gap: 3,
    sku: 'DG-20PB',
  },
  {
    id: 'food-warmer',
    name: 'Food Warmer',
    type: 'appliance',
    description: 'Food Warmer',
    section: 'top',
    price: 690,
    width: 13.875,
    gap: 3,
    sku: 'DG-13FW',
  },
  {
    id: 'griddle-oven',
    name: 'Videl Outdoor Oven',
    type: 'appliance',
    description: 'Videl Outdoor Oven',
    section: 'top',
    price: 3195,
    width: 30,
    gap: 3,
    sku: 'VD-DR30',
  },
  {
    id: 'margarita-center',
    name: 'Margarita Center',
    type: 'appliance',
    description: 'Margarita Center',
    section: 'top',
    price: 575,
    width: 20.375,
    gap: 3,
    sku: 'DG-20MC',
  },
  {
    id: 'sink',
    name: 'Sink',
    type: 'accessory',
    description: 'Stainless Steel Sink',
    section: 'top',
    price: 375,
    width: 17.75,
    gap: 3,
    sku: 'DG-20SINK'
  },
  {
    id: 'standard-trash-chute',
    name: 'Standard Trash Chute',
    type: 'accessory',
    description: 'Standard Trash Chute',
    section: 'top',
    price: 325,
    width: 18.625,
    gap: 3,
    sku: 'DG-12TCHE'
  },
]);

// Add-Ons Data (items that don't take up island space)
const addOns = ref([
  {
    id: 'audio-system',
    name: 'Outdoor Audio System',
    description: 'Outdoor Audio System for your BBQ Island',
    price: 943,
    type: 'add-on',
    maxQuantity: 1,
  },
]);

// Track selected add-ons with quantities
const selectedAddOns = ref([]);

const islandLength = computed(() => {
  return length.value ? length.value : 0;
});

// Helper function to get the total width of an appliance (physical width + gap)
const getTotalWidth = (appliance) => {
  return appliance.width + (appliance.gap || 0);
};

const remainingSpace = computed(() => {
  const spaceBySection = placedAppliances.value.reduce(
    (acc, item) => {
      // Use the total width (width + gap) instead of just width
      acc[item.section] += getTotalWidth(item);
      return acc;
    },
    { top: 0, bottom: 0 },
  );

  return {
    top: islandLength.value - spaceBySection.top,
    bottom: islandLength.value - spaceBySection.bottom,
  };
});

// Computed Properties
const basePrice = computed(() => (length.value ? (length.value / 12) * 235 : 0));

const getSelectedTopStyle = computed(() =>
  topStyles.find((style) => style.id === selectedTopStyle.value),
);

const getSelectedTopStyleColor = computed(() =>
  colors.find((color) => color.id === selectedTopColor.value),
);

const getSelectedBottomStyleColor = computed(() =>
  colors.find((color) => color.id === selectedBottomColor.value),
);

const topStylePrice = computed(() =>
  length.value ? (length.value / 12) * (getSelectedTopStyle.value?.price || 0) : 0,
);

const getDepth = computed(() => {
  if (!selectedTopStyle.value) return '30 inches';
  return `${getSelectedTopStyle.value?.depth} inches (30" + ${getSelectedTopStyle.value?.name})` || '30 inches';
});

const selectedAccessoriesList = computed(() =>
  placedAppliances.value.filter((acc) => acc.type === 'accessory'),
);

const selectedAppliancesList = computed(() =>
  placedAppliances.value.filter((acc) => acc.type === 'appliance'),
);

const addOnsTotal = computed(() => {
  return selectedAddOns.value.reduce((sum, addOn) => sum + (addOn.price * addOn.quantity), 0);
});

const totalPrice = computed(() => {
  const accessoriesTotal = selectedAccessoriesList.value.reduce((sum, acc) => sum + acc.price, 0);
  const appliancesTotal = selectedAppliancesList.value.reduce((sum, app) => sum + app.price, 0);
  return basePrice.value + topStylePrice.value + accessoriesTotal + appliancesTotal + addOnsTotal.value;
});

const canProceed = computed(() => {
  switch (currentStep.value) {
    case '1':
      return !!selectedShape.value;
    case '2':
      return !!length.value && length.value > 0;
    case '3':
      return !!selectedTopStyle.value;
    case '4':
      return !!selectedTopColor.value && !!selectedBottomColor.value;
    case '5':
      return false;
    default:
      return true;
  }
});

// Methods
const selectShape = (shape) => {
  selectedShape.value = shape;
};

const selectTopStyle = (style) => {
  selectedTopStyle.value = style;
};

const selectBottomColor = (color) => {
  selectedBottomColor.value = color;
};

const selectTopColor = (color) => {
  selectedTopColor.value = color;
};

const calculateSuggestedPrice = (dealerPrice) => {
  return Math.ceil(Math.ceil(dealerPrice * 0.92) * 2);
};

const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
};

const finish = () => {
  // Here you can add logic to save the configuration or navigate to a confirmation page
  router.push('/');
};

// Function to add appliance directly (for Add button clicks)
const handleAddAppliance = (appliance) => {
  // Find first available position in the section
  const sectionAppliances = placedAppliances.value.filter((a) => a.section === appliance.section);
  let position = 0;
  let found = false;

  while (!found && position + getTotalWidth(appliance) <= islandLength.value) {
    const hasOverlap = sectionAppliances.some((existing) => {
      const existingStart = existing.position;
      const existingEnd = existing.position + getTotalWidth(existing);
      const newStart = position;
      const newEnd = position + getTotalWidth(appliance);
      return newStart < existingEnd && newEnd > existingStart;
    });

    if (!hasOverlap) {
      found = true;
    } else {
      position++;
    }
  }

  if (found) {
    placedAppliances.value.push({
      ...appliance,
      instanceId: `${appliance.id}-${placedApplianceCounter.value++}`,
      position,
      section: appliance.section,
    });
    // Sort appliances by section and position
    placedAppliances.value.sort((a, b) => {
      if (a.section !== b.section) return a.section === 'top' ? -1 : 1;
      return a.position - b.position;
    });
  }
};

// Setup auto-scrolling during drag operations
const setupAutoScroll = () => {
  const handleDragOver = (e) => {
    const windowHeight = window.innerHeight;
    const mouseY = e.clientY;

    // Clear any existing interval
    if (scrollIntervalId) {
      clearInterval(scrollIntervalId);
      scrollIntervalId = null;
      isAutoscrolling = false;
    }

    // Check if we're near the bottom of the viewport
    if (mouseY > windowHeight - autoScrollThreshold) {
      isAutoscrolling = true;
      scrollIntervalId = setInterval(() => {
        window.scrollBy(0, autoScrollSpeed);
      }, 16); // ~60fps
    }
    // Check if we're near the top of the viewport
    else if (mouseY < autoScrollThreshold) {
      isAutoscrolling = true;
      scrollIntervalId = setInterval(() => {
        window.scrollBy(0, -autoScrollSpeed);
      }, 16); // ~60fps
    }
  };

  const handleDragEnd = () => {
    if (scrollIntervalId) {
      clearInterval(scrollIntervalId);
      scrollIntervalId = null;
      isAutoscrolling = false;
    }
  };

  document.addEventListener('dragover', handleDragOver);
  document.addEventListener('dragend', handleDragEnd);
  document.addEventListener('drop', handleDragEnd);

  // Clean up on component unmount
  onUnmounted(() => {
    document.removeEventListener('dragover', handleDragOver);
    document.removeEventListener('dragend', handleDragEnd);
    document.removeEventListener('drop', handleDragEnd);
    if (scrollIntervalId) {
      clearInterval(scrollIntervalId);
    }
  });
};

// Setup auto-scroll on component mount
onMounted(() => {
  setupAutoScroll();
});

// Add a new method to handle appliance swapping
const swapAppliances = (draggedIndex, targetIndex) => {
  // Don't do anything if the indexes are the same
  if (draggedIndex === targetIndex) return;

  // Get the appliances to swap
  const draggedAppliance = { ...placedAppliances.value[draggedIndex] };
  const targetAppliance = { ...placedAppliances.value[targetIndex] };

  // Make sure they're in the same section
  if (draggedAppliance.section !== targetAppliance.section) return;

  // Instead of just swapping positions, let's reorganize all appliances in the section
  const section = draggedAppliance.section;

  // Get all appliances in this section except the two being swapped
  const sectionAppliances = placedAppliances.value
    .filter((a, i) => a.section === section && i !== draggedIndex && i !== targetIndex)
    .sort((a, b) => a.position - b.position);

  // Create a copy of all appliances
  const updatedAppliances = [...placedAppliances.value];

  // Position where we'll start placing appliances
  let currentPosition = 0;

  // Get the swap direction (determines which appliance goes first)
  const isDraggedFirst = draggedAppliance.position < targetAppliance.position;
  const firstAppliance = isDraggedFirst ? draggedAppliance : targetAppliance;
  const secondAppliance = isDraggedFirst ? targetAppliance : draggedAppliance;
  const firstIndex = isDraggedFirst ? draggedIndex : targetIndex;
  const secondIndex = isDraggedFirst ? targetIndex : draggedIndex;

  // Now place all appliances in order without overlaps
  let newPositions = [];

  // First, place all appliances that should come before the swapped pair
  for (const appliance of sectionAppliances) {
    if (appliance.position < Math.min(draggedAppliance.position, targetAppliance.position)) {
      newPositions.push({
        index: placedAppliances.value.findIndex(a => a.instanceId === appliance.instanceId),
        position: currentPosition
      });
      currentPosition += getTotalWidth(appliance);
    }
  }

  // Then place the swapped appliances, but in reverse order
  newPositions.push({
    index: secondIndex,
    position: currentPosition
  });
  currentPosition += getTotalWidth(secondAppliance);

  newPositions.push({
    index: firstIndex,
    position: currentPosition
  });
  currentPosition += getTotalWidth(firstAppliance);

  // Finally, place all appliances that should come after the swapped pair
  for (const appliance of sectionAppliances) {
    if (appliance.position > Math.max(draggedAppliance.position, targetAppliance.position)) {
      newPositions.push({
        index: placedAppliances.value.findIndex(a => a.instanceId === appliance.instanceId),
        position: currentPosition
      });
      currentPosition += getTotalWidth(appliance);
    }
  }

  // Now update all the positions
  for (const { index, position } of newPositions) {
    if (index !== -1) {
      updatedAppliances[index] = {
        ...updatedAppliances[index],
        position
      };
    }
  }

  // Update the state
  placedAppliances.value = updatedAppliances;

  // Sort by section and position
  placedAppliances.value.sort((a, b) => {
    if (a.section !== b.section) return a.section === 'top' ? -1 : 1;
    return a.position - b.position;
  });
};

// Add method to handle add-on updates
const updateSelectedAddOns = (addOns) => {
  selectedAddOns.value = addOns;
};

// Method to handle PDF download
const handleDownloadPdf = async () => {
  // Get the disclaimer text from the IslandPreview component
  const disclaimerElement = document.querySelector('.island-preview-container .disclaimer');
  const disclaimerText = disclaimerElement ? disclaimerElement.textContent : '';

  // Generate a filename based on the customer's configuration
  const filename = `BBQ-Island-${selectedShape.value}-${length.value}in`;

  // Download the PDF
  await downloadBbqIslandPdf({
    quoteSummarySelector: '.quote-summary',
    islandPreviewSelector: '.island-preview-container',
    disclaimerText,
    filename,
  });
};
</script>

<style scoped>
::v-deep(.p-steppanel) {
  background-color: #f9fafb;
}
</style>
