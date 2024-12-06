<template>
  <div class="card flex flex-col justify-center items-center w-full gap-y-8">
    <div class="w-full flex flex-col items-start">
      <Button
        label="Go Back"
        icon="pi pi-arrow-left"
        variant="text"
        severity="contrast"
        class="self-start mb-4 -ml-3"
        size="large"
        @click="router.push('/')"
      ></Button>
      <h2 class="text-2xl font-bold mb-4">Custom BBQ Island Configurator</h2>
      <!-- <Steps :model="steps" :readonly="false" class="w-full" /> -->
      <Stepper v-model:value="currentStep" class="w-full" linear>
        <StepList>
          <Step v-for="(step, i) in steps" :value="`${i + 1}`" :key="step.label">
            {{ step.label }}
          </Step>
        </StepList>
        <StepPanels>
          <StepPanel v-slot="{ activateCallback }" value="1">
            <!-- Step 1: Island Shape -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Island Shape</h3>
              <div class="flex flex-col gap-4">
                <div
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500"
                  :class="{ 'border-blue-500 bg-blue-50': selectedShape === 'linear' }"
                  @click="selectShape('linear')"
                >
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
                <div
                  class="p-4 border rounded-lg cursor-not-allowed transition-all opacity-70"
                  :class="{ 'border-blue-500 bg-blue-50': selectedShape === 'l-shaped' }"
                >
                  <div class="flex items-center gap-4">
                    <i class="pi pi-chevron-left text-2xl -rotate-45"></i>
                    <div>
                      <h4 class="text-lg font-medium">L-Shaped Island</h4>
                      <p class="text-gray-600">
                        A straight-line design perfect for any outdoor space
                      </p>
                      <span class="italic">Coming Soon</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-end mt-8">
              <Button
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed"
                @click="activateCallback('2')"
                severity="success"
              />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="2">
            <!-- Step 2: Island Size -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Island Dimensions</h3>
              <div class="flex flex-col gap-4">
                <div class="flex flex-col gap-2">
                  <label class="font-medium">Length (ft)</label>
                  <InputNumber
                    v-model="length"
                    :min="3"
                    :max="30"
                    :min-fraction-digits="1"
                    :max-fraction-digits="2"
                    placeholder="Enter length in feet (Minimum 3 feet)"
                    mode="decimal"
                    class="w-full md:w-1/2"
                  />
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-4">
                  <div class="p-4 border rounded-lg bg-gray-50">
                    <p class="font-medium">Height</p>
                    <p class="text-gray-600">36 inches (Standard)</p>
                  </div>
                  <div class="p-4 border rounded-lg bg-gray-50">
                    <p class="font-medium">Depth</p>
                    <p class="text-gray-600">{{ getDepth }} inches</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button
                :label="'Previous'"
                :icon="'pi pi-arrow-left'"
                @click="activateCallback('1')"
                :disabled="Number(currentStep) === 0"
                outlined
              />
              <Button
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed"
                @click="activateCallback('3')"
                severity="success"
              />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="3">
            <!-- Step 3: Top Style -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Top Style</h3>
              <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div
                  v-for="style in topStyles"
                  :key="style.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500"
                  :class="{ 'border-blue-500 bg-blue-50': selectedTopStyle === style.id }"
                  @click="selectTopStyle(style.id)"
                >
                  <h4 class="text-lg font-medium">{{ style.name }}</h4>
                  <p class="text-gray-600">{{ style.description }}</p>
                  <p class="mt-2 font-semibold">
                    {{ style.price === 0 ? 'Included' : `+$${style.price}/ft` }}
                  </p>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button
                :label="'Previous'"
                :icon="'pi pi-arrow-left'"
                @click="activateCallback('2')"
                :disabled="Number(currentStep) === 0"
                outlined
              />
              <Button
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed"
                @click="activateCallback('4')"
                severity="success"
              />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="4">
            <!-- Step 4: Colors -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Top Color</h3>
              <div class="grid grid-cols-3 md:grid-cols-6 lg:grid-cols-8 gap-4">
                <div
                  v-for="color in colors"
                  :key="color.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500 flex flex-col"
                  :class="{ 'border-blue-500 bg-blue-50': selectedTopColor === color.id }"
                  @click="selectTopColor(color.id)"
                >
                  <img
                    :src="color.imageUrl"
                    :alt="color.name"
                    class="w-16 h-16 mx-auto object-contain"
                  />
                  <h4 class="text-lg font-medium text-center mt-auto">{{ color.name }}</h4>
                </div>
              </div>
              <h3 class="text-xl font-semibold mt-6 mb-4">Select Bottom Color</h3>
              <div class="grid grid-cols-3 md:grid-cols-6 lg:grid-cols-8 gap-4">
                <div
                  v-for="color in colors"
                  :key="color.id"
                  class="p-4 border rounded-lg cursor-pointer transition-all hover:border-blue-500 flex flex-col"
                  :class="{ 'border-blue-500 bg-blue-50': selectedBottomColor === color.id }"
                  @click="selectBottomColor(color.id)"
                >
                  <img
                    :src="color.imageUrl"
                    :alt="color.name"
                    class="w-16 h-16 mx-auto object-contain"
                  />
                  <h4 class="text-lg font-medium text-center mt-auto">{{ color.name }}</h4>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button
                :label="'Previous'"
                :icon="'pi pi-arrow-left'"
                @click="activateCallback('3')"
                :disabled="Number(currentStep) === 0"
                outlined
              />
              <Button
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed"
                @click="activateCallback('5')"
                severity="success"
              />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="5">
            <!-- Step 4: Accessories -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Accessories</h3>
              <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                <div
                  v-for="accessory in accessories"
                  :key="accessory.id"
                  class="p-4 border rounded-lg"
                >
                  <div class="flex justify-between items-start">
                    <div>
                      <h4 class="text-lg font-medium">{{ accessory.name }}</h4>
                      <p class="text-gray-600">{{ accessory.description }}</p>
                      <p class="mt-2 font-semibold">${{ accessory.price }}</p>
                    </div>
                    <Checkbox v-model="selectedAccessories" :value="accessory.id" :binary="false" />
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-between mt-8">
              <Button
                :label="'Previous'"
                :icon="'pi pi-arrow-left'"
                @click="activateCallback('4')"
                :disabled="Number(currentStep) === 0"
                outlined
              />
              <Button
                :label="Number(currentStep) === steps.length ? 'Finish' : 'Next'"
                :icon="Number(currentStep) === steps.length ? 'pi pi-check' : 'pi pi-arrow-right'"
                :disabled="!canProceed"
                @click="activateCallback('6')"
                severity="success"
              />
            </div>
          </StepPanel>
          <StepPanel v-slot="{ activateCallback }" value="6">
            <!-- Step 5: Appliances -->
            <div class="w-full">
              <h3 class="text-xl font-semibold mb-4">Select Appliances</h3>
              <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                <div
                  v-for="appliance in appliances"
                  :key="appliance.id"
                  class="p-4 border rounded-lg"
                >
                  <div class="flex justify-between items-start">
                    <div>
                      <h4 class="text-lg font-medium">{{ appliance.name }}</h4>
                      <p class="text-gray-600">{{ appliance.description }}</p>
                      <p class="mt-2 font-semibold">${{ appliance.price }}</p>
                    </div>
                    <Checkbox v-model="selectedAppliances" :value="appliance.id" :binary="false" />
                  </div>
                </div>
              </div>
            </div>
            <div class="w-full flex justify-start mt-8">
              <Button
                :label="'Previous'"
                :icon="'pi pi-arrow-left'"
                @click="activateCallback('5')"
                :disabled="Number(currentStep) === 0"
                outlined
              />
            </div>
          </StepPanel>
        </StepPanels>
      </Stepper>
    </div>

    <div class="w-full mt-4">
      <!-- Order Summary -->

      <div
        v-show="Number(currentStep) > 4"
        class="w-full mt-8 py-6 px-4 lg:p-6 border rounded-lg bg-gray-50"
      >
        <div class="w-full flex mb-4">
          <h3 class="w-6/12 lg:w-7/12 text-xl font-semibold mb-4 pr-3 lg:pr-0">Order Summary</h3>
          <h3 class="w-2/12 lg:w-2/12 text-xl font-semibold mb-4 text-right px-3">Cost</h3>
          <h3 class="w-4/12 lg:w-3/12 text-xl font-semibold mb-4 text-right px-3">
            Suggested Retail Price*
          </h3>
        </div>
        <Divider />
        <div class="w-full flex flex-col gap-3 text-lg">
          <div v-if="selectedShape" class="w-full flex justify-between">
            <div class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">
              <span>{{ length }}ft Linear Island</span>
              <br />
              <span>Top Color: {{ getSelectedTopStyleColor?.name }}</span>
              <br />
              <span>Bottom Color: {{ getSelectedBottomStyleColor?.name }}</span>
              <br />
              <span class="text-sm">{{ length }}'(L) &times; 3'(D) &times; 3'(H)</span>
            </div>
            <span class="w-2/12 lg:w-2/12 text-right font-medium px-3">{{
              formatPrice(basePrice)
            }}</span>
            <span class="w-4/12 lg:w-3/12 text-right font-medium px-3">{{
              formatPrice(calculateSuggestedPrice(basePrice))
            }}</span>
          </div>

          <div v-if="selectedTopStyle && topStylePrice > 0" class="flex justify-between">
            <span class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">{{ getSelectedTopStyle?.name }}</span>
            <span class="w-2/12 lg:w-2/12 text-right font-medium px-3"
              >+{{ formatPrice(topStylePrice) }}</span
            >
            <span class="w-4/12 lg:w-3/12 text-right font-medium px-3"
              >+{{ formatPrice(calculateSuggestedPrice(topStylePrice)) }}</span
            >
          </div>

          <template v-if="selectedAccessories.length > 0">
            <Divider />
            <h4 class="font-medium">Selected Accessories:</h4>
            <div
              v-for="accessory in selectedAccessoriesList"
              :key="accessory.id"
              class="flex justify-between"
            >
              <span class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">{{ accessory.name }}</span>
              <span class="w-2/12 lg:w-2/12 text-right font-medium px-3"
                >+{{ formatPrice(accessory.price) }}</span
              >
              <span class="w-4/12 lg:w-3/12 text-right font-medium px-3"
                >+{{ formatPrice(calculateSuggestedPrice(accessory.price)) }}</span
              >
            </div>
          </template>

          <template v-if="selectedAppliances.length > 0">
            <Divider />
            <h4 class="font-medium">Selected Appliances:</h4>
            <div
              v-for="appliance in selectedAppliancesList"
              :key="appliance.id"
              class="flex justify-between"
            >
              <span class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">{{ appliance.name }}</span>
              <span class="w-2/12 lg:w-2/12 text-right font-medium px-3"
                >+{{ formatPrice(appliance.price) }}</span
              >
              <span class="w-4/12 lg:w-3/12 text-right font-medium px-3"
                >+{{ formatPrice(calculateSuggestedPrice(appliance.price)) }}</span
              >
            </div>
          </template>

          <Divider />
          <div class="flex justify-between text-xl font-bold">
            <span class="w-6/12 lg:w-7/12 pr-3 lg:pr-0">Total Price</span>
            <span class="w-4/12 lg:w-3/12 text-right font-medium px-3">{{
              formatPrice(totalPrice)
            }}</span>
            <span class="w-4/12 lg:w-3/12 text-right font-medium px-3">{{
              formatPrice(calculateSuggestedPrice(totalPrice))
            }}</span>
          </div>
        </div>
      </div>
    </div>

    <!-- Navigation Buttons -->
  </div>
</template>

<script setup>
import { ref, computed } from 'vue';
import { useRouter } from 'vue-router';

const router = useRouter();

// Steps configuration
const steps = [
  { label: 'Shape' },
  { label: 'Size' },
  { label: 'Top Style' },
  { label: 'Island Colors' },
  { label: 'Accessories' },
  { label: 'Appliances' },
];

const currentStep = ref('1');
const selectedShape = ref('');
const length = ref(null);
const selectedTopStyle = ref('flat');
const selectedAccessories = ref([]);
const selectedAppliances = ref([]);
const selectedTopColor = ref('');
const selectedBottomColor = ref('');

// Top Styles Data
const topStyles = [
  {
    id: 'flat',
    name: 'Flat Top',
    description: 'Standard flat surface design',
    price: 0,
    depth: 36,
  },
  {
    id: 'backsplash',
    name: 'Backsplash',
    description: 'Added height at the back',
    price: 15,
    depth: 42,
  },
  {
    id: 'bartop',
    name: 'Bar Top',
    description: 'Extended counter for seating',
    price: 75,
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

// Accessories Data
const accessories = [
  {
    id: '36-double-door',
    name: '36" Double Door',
    description: 'Access door for storage',
    price: 356,
  },
  {
    id: '42-double-door',
    name: '42" Double Door',
    description: 'Access door for storage',
    price: 479,
  },
  {
    id: 'trash-chute',
    name: 'Trash Chute',
    description: 'Built-in waste management',
    price: 266,
  },
  {
    id: 'umbrella-short-mount',
    name: 'Umbrella w/ Short Mount',
    description: 'Added protection from the sun',
    price: 511,
  },
  {
    id: 'umbrella-full-mount',
    name: 'Umbrella w/ Full Mount',
    description: 'Added protection from the sun',
    price: 527,
  },
  {
    id: 'electrical-outlet',
    name: 'Electrical Outlet',
    description: 'Additional power outlet',
    price: 175,
  },
  {
    id: 'charging-station',
    name: 'Chaging Station',
    description: 'Addition charging station',
    price: 183,
  },
  {
    id: 'bottle-opener',
    name: 'Bottle Opener',
    description: 'Extra party supplies',
    price: 19,
  },
];

// Appliances Data
const appliances = [
  {
    id: '36-grill',
    name: 'Built-in 36" Gran Fuego',
    description: 'Professional grade BBQ grill',
    price: 1436,
  },
  {
    id: '42-grill',
    name: 'Built-in 42" Gran Fuego',
    description: 'Professional grade BBQ grill',
    price: 1935,
  },
  {
    id: 'griddle',
    name: 'Gran Plancha - 30" Griddle',
    description: 'Versatile flat-top griddle for any cooking needs',
    price: 1346,
  },
  {
    id: 'side-burner',
    name: 'Double Side Burner',
    description: 'Additional cooking surface',
    price: 563,
  },
];

// Computed Properties
const basePrice = computed(() => (length.value ? length.value * 235 : 0));

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
  length.value ? length.value * (getSelectedTopStyle.value?.price || 0) : 0,
);

const getDepth = computed(() => {
  if (!selectedTopStyle.value) return 36;
  return getSelectedTopStyle.value?.depth || 36;
});

const selectedAccessoriesList = computed(() =>
  accessories.filter((acc) => selectedAccessories.value.includes(acc.id)),
);

const selectedAppliancesList = computed(() =>
  appliances.filter((app) => selectedAppliances.value.includes(app.id)),
);

const totalPrice = computed(() => {
  const accessoriesTotal = selectedAccessoriesList.value.reduce((sum, acc) => sum + acc.price, 0);
  const appliancesTotal = selectedAppliancesList.value.reduce((sum, app) => sum + app.price, 0);
  return basePrice.value + topStylePrice.value + accessoriesTotal + appliancesTotal;
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
</script>
