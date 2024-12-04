<template>
  <div class="card flex flex-col justify-center items-center w-full gap-y-8">
    <div class="w-full flex justify-end">
      <Button type="button" label="Announcements" icon="pi pi-bell" :badge="`${announcementsLength}`"
        badgeSeverity="danger" severity="contrast" outlined @click="router.push('/announcements')" />
    </div>
    <div class="w-full flex flex-col lg:flex-row justify-between items-center self-start -mt-4">
      <div v-if="userStore?.currentUser?.first_name"
        class="text-2xl text-black order-2 lg:order-1 flex justify-center items-center">
        <Avatar v-if="userStore?.currentUser?.avatar_url" :image="userStore?.currentUser?.avatar_url" class="mr-4"
          size="xlarge" shape="circle" />
        Welcome,&nbsp;
        <span class="font-bold">
          {{ userStore.currentUser?.first_name }}
          {{ userStore.currentUser?.last_name }}
        </span>
      </div>
      <div v-if="userStore?.company?.logo" class="mb-5 lg:mb-0 order-1 lg:order-2 h-14">
        <img :src="userStore?.company?.logo" class="w-auto max-h-14">
      </div>
    </div>
    <div class="w-full flex flex-col xl:grid xl:grid-cols-5 gap-8 mb-5">
      <div class="w-full gap-y-8"
        :class="showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole) ? 'col-span-3 flex flex-col' : 'col-span-5 flex flex-col lg:grid lg:grid-cols-2 lg:gap-x-8'">
        <div class="w-full flex flex-col gap-y-6">
          <div class="-mb-4">
            <h3 class="text-black font-semibold text-xl ml-2 -mb-2">
              Product Configuration
            </h3>
            <Divider />
          </div>
          <div class="w-full flex flex-col">
            <span class="text-black font-medium mb-2">
              {{ selectedProduct?.product ? `Product selected: ${selectedProduct.product}` : 'Select a product' }}
            </span>
            <AutoComplete v-model="selectedProduct" option-label="product" :suggestions="filteredProductsList"
              @complete="searchProducts" dropdown :virtual-scroller-options="{ itemSize: 45 }" size="medium"
              class="w-full" placeholder="Search for a product..." @option-select="onProductSelect()">
              <template #option="slotProps">
                <span v-html="highlightMatch(slotProps.option.product)"></span>
              </template>
            </AutoComplete>
          </div>
          <div v-if="materialAttributes.length" class="w-full flex flex-col">
            <span class="text-black font-medium mb-2">
              {{ selectedMaterial?.attribute_option ?
                `Selected material: ${selectedMaterial.attribute_option}` : 'Select a material' }}
            </span>
            <Select v-model="selectedMaterial" name="material" :options="materialAttributes"
              option-label="attribute_option" placeholder="Select a material" fluid class="w-full"></Select>
          </div>
          <template v-for="(attributeType, key) in allAttributes">
            <div v-if="attributeType && attributeType.length" class="w-full flex flex-col">
              <span class="text-black font-medium mb-2">
                {{ selectedAttributes?.[textToKey(key)]?.attribute_option ? getSelectedAttributeText(key,
                  selectedAttributes?.[textToKey(key)].attribute_option) : `Select ${key}` }}
              </span>
              <Select v-model="selectedAttributes[textToKey(key)]" :name="textToKey(key)" :options="attributeType"
                option-label="attribute_option" :placeholder="`Select ${key}`" fluid class="w-full"></Select>
            </div>
          </template>
        </div>
        <div class="w-full flex flex-col gap-y-6">
          <div v-if="Object.keys(addOns).length" class="-mb-4">
            <h3 class="text-black font-semibold text-xl ml-2 -mb-2">
              Add Ons
            </h3>
            <Divider />
          </div>
          <template v-for="(addOnType, key) in addOns" :key="key">
            <div v-if="addOnType && addOnType.length" class="w-full flex flex-col">
              <span class="text-black font-medium mb-2">
                {{ selectedAddons?.[textToKey(key)]?.attribute_option &&
                  selectedAddons?.[textToKey(key)]?.attribute_option !== "None" ? getSelectedAddonText(key,
                    selectedAddons?.[textToKey(key)]?.attribute_option, selectedAddons?.[textToKey(key)]?.part_number,
                    selectedAddons?.[textToKey(key)]?.add_on_price) : `Select ${key}` }}
              </span>
              <Select v-model="selectedAddons[textToKey(key)]" :name="textToKey(key)" :options="addOnType"
                option-label="attribute_option" :placeholder="`Select ${key}`" fluid class="w-full">
                <template #option="slotProps">
                  {{ slotProps.option.attribute_option }} {{ slotProps?.option?.add_on_price ?
                    `(+${formatPrice(calculateRetailPrice(slotProps?.option?.add_on_price, "MAP"))})` : '' }}
                </template>
              </Select>
            </div>
          </template>
        </div>
      </div>
      <div
        v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole) && selectedProduct && selectedProduct.product"
        class="col-span-5 w-full flex flex-col gap-y-6">
        <div v-if="currentConfigurationSKU" class="flex items-center justify-center mb-4">
          <h3 class="text-xl font-bold text-red-600 mr-2">SKU: </h3>
          <span class="text-xl">
            {{ currentConfigurationSKU }}
          </span>
        </div>
        <div class="">
          <h3 class="text-2xl text-blue-900 font-medium">Dealer Price: <span class="text-2xl text-black">
              {{ formatPrice(calculatePrice(getTotalDealerPrice(), "DEALER")) }}
            </span></h3>
        </div>
        <div>
          <h3 class="text-2xl text-blue-900 font-medium">Accounts Cost</h3>
          <Divider />
        </div>
        <div class="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-x-4 gap-y-8">
          <template v-for="(card, i) in accountPriceCards" :key="i">
            <div :id="`flip-card-${card.id}`" class="flip-card hover:cursor-pointer">
              <div class="flip-card__content text-center relative p-20 transition-transform duration-700 mb-12">
                <Card class="flip-card__front absolute top-0 right-0 left-0" @click="flipCard(`flip-card-${card.id}`)">
                  <template #title>
                    <div class="text-center">
                      {{ card.label }} Price
                    </div>
                  </template>
                  <template #footer>
                    <div class="flex gap-4 mt-1">
                      <Button :label="`Show ${card.label} Price`" severity="contrast" variant="outlined" class="w-full"
                        @click.prevent="flipCard(`flip-card-${card.id}`)" />
                    </div>
                  </template>
                </Card>
                <Card class="flip-card__back absolute top-0 right-0 left-0" @click="unflipCard(`flip-card-${card.id}`)">
                  <template #header>
                    <div class="w-full text-center pt-6 text-2xl font-semibold">
                      {{ formatPrice(calculatePrice(getTotalDealerPrice(), card.account)) }}
                    </div>
                  </template>
                  <template #title>
                    <div class="text-center">
                      {{ card.label }} Price
                    </div>
                  </template>
                  <template #content>
                    <p class="text-lg text-center italic font-bold">
                      <!-- <FormulaDisplay :formula="card.formula" /> -->
                      {{
                        calculatePercentage(calculatePrice(getTotalDealerPrice(), card.account),
                          getTotalDealerPrice()) }}
                    </p>
                  </template>
                </Card>
              </div>
            </div>
          </template>
        </div>
        <div>
          <h3 class="text-2xl text-blue-900 font-medium">Retail Price</h3>
          <Divider />
        </div>
        <div class="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-x-4 gap-y-8">
          <template v-for="(card, i) in retailPriceCards" :key="i">
            <div :id="`flip-card-${card.id}`" class="flip-card hover:cursor-pointer">
              <div class="flip-card__content text-center relative p-20 transition-transform duration-700 mb-14">
                <Card class="flip-card__front absolute top-0 right-0 left-0" @click="flipCard(`flip-card-${card.id}`)">
                  <template #title>
                    <div class="text-center">
                      {{ card.label }} Price
                    </div>
                  </template>
                  <template #footer>
                    <div class="flex gap-4 mt-1">
                      <Button :label="`Show ${card.label} Price`" severity="contrast" variant="outlined" class="w-full"
                        @click.prevent="flipCard(`flip-card-${card.id}`)" />
                    </div>
                  </template>
                </Card>
                <Card class="flip-card__back absolute top-0 right-0 left-0" @click="unflipCard(`flip-card-${card.id}`)">
                  <template #header>
                    <div class="w-full text-center pt-6 text-2xl font-semibold">
                      {{ formatPrice(calculateRetailPrice(getTotalDealerPrice(), card.account)) }}
                    </div>
                  </template>
                  <template #title>
                    <div class="text-center">
                      {{ card.label }} Price
                    </div>
                  </template>
                  <template #content>
                    <p class="text-lg text-center italic font-bold">
                      <!-- <FormulaDisplay :formula="card.formula" /> -->
                      {{
                        calculatePercentage(calculateRetailPrice(getTotalDealerPrice(), card.account),
                          getTotalDealerPrice()) }} *
                    </p>
                    <span class="text-sm">* Percentage for retail price is approximate and is not 100% accurate. It can
                      vary by 1-3% </span>
                  </template>
                </Card>
              </div>
            </div>
          </template>
        </div>
        <div v-if="getPriceBreakdown.length" class="w-full">
          <h3 class="text-2xl font-bold text-green-600 my-4">
            Price Breakdown
          </h3>
          <DataTable :value="getPriceBreakdown" class="w-full" table-style="min-width: 100%;" style="width: 100%;">
            <Column header="Name" style="min-width: 13rem;">
              <template #body="slotProps">
                {{ slotProps.data.attribute_option }} <br>
                {{ slotProps.data?.attribute_option?.includes('Selected configuration') ? currentConfigurationSKU :
                  slotProps?.data?.part_number || '' }}
              </template>
            </Column>
            <Column header="MAP">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_map) }}
              </template>
            </Column>
            <Column header="MSRP">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_msrp) }}
              </template>
            </Column>
            <Column header="Dealer Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price) }}
              </template>
            </Column>
            <Column header="Group Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_group) }}
              </template>
            </Column>
            <Column header="Landscape Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_landscape) }}
              </template>
            </Column>
            <Column header="Internet Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_internet) }}
              </template>
            </Column>
            <Column header="Distributor Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_distributor) }}
              </template>
            </Column>
            <Column header="Master Distributor Cost">
              <template #body="slotProps">
                {{ formatPrice(slotProps.data.add_on_price_master_distributor) }}
              </template>
            </Column>
          </DataTable>
        </div>
      </div>

      <div
        v-if="selectedProduct && selectedProduct.product && showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
        class="w-full col-span-2 flex flex-col items-start xl:pl-4 xl:mt-7">
        <div v-if="currentConfigurationSKU" class="flex items-center justify-center mb-4">
          <h3 class="text-xl font-bold text-red-600 mr-2">SKU: </h3>
          <span class="text-xl">
            {{ currentConfigurationSKU }}
          </span>
        </div>
        <div class="flex items-center justify-center mb-4">
          <h2 class="text-2xl font-bold mr-2">MAP:</h2>
          <span v-if="promotionApplied" class="text-lg line-through mr-1">
            {{
              formatPrice(calculateRetailPrice(getTotalDealerPrice(), "MAP"))
            }}
          </span>
          <span class="text-2xl">{{
            formatPrice(calculateRetailPrice(getTotalDealerPrice(), "MAP", promotionApplied ?
              selectedMaterial.discount : 0))
          }}</span>
        </div>
        <div class="flex items-center justify-center mb-4">
          <h2 class="text-2xl font-bold mr-2">MSRP:</h2>
          <span v-if="promotionApplied" class="text-lg line-through mr-1">
            {{
              formatPrice(calculateRetailPrice(getTotalDealerPrice(), "MSRP"))
            }}
          </span>
          <span class="text-2xl">{{ formatPrice(calculateRetailPrice(getTotalDealerPrice(), "MSRP", promotionApplied ?
            selectedMaterial.discount : 0))
            }}</span>
        </div>
        <div class="flex items-center justify-center mb-4">
          <h2 class="text-2xl font-bold mr-2">{{ userStore?.company?.name || 'Your Company' }} Cost:</h2>
          <span v-if="promotionApplied" class="text-lg line-through mr-1">
            {{
              formatPrice(calculatePrice(getTotalDealerPrice(),
                userStore?.currentRole ?? userStore?.currentCompanyRole ?? 'MAP',
              ))
            }}
          </span>
          <span class="text-2xl">{{ formatPrice(calculatePrice(getTotalDealerPrice(),
            userStore?.currentRole ?? userStore?.currentCompanyRole ?? 'MAP',
            promotionApplied ? selectedMaterial.discount : 0
          ))
            }}</span>
        </div>
        <div v-if="getPriceBreakdown.length">
          <div v-if="showPromotion">
            <Divider />
            <div class="text-lg text-red-500">This product is currently part of an ongoing promotion.</div>
            <div class="text-lg">Promo Code: <span class="text-xl text-green-600"> {{ selectedMaterial.promo_code }}
              </span>
            </div>
            <div class="text-lg">Discount: <span class="text-xl text-green-600"> {{ Number(selectedMaterial.discount) *
              100
                }}%
              </span>
            </div>
            <div v-if="selectedMaterial.promotion_details">Promotion Details: {{ selectedMaterial.promotion_details }}
            </div>
            <Button v-show="!promotionApplied" label="Apply Promotion" severity="success" class="mt-3"
              @click="applyPromotion"></Button>
            <Button v-show="promotionApplied" label="Promotion Applied" severity="disabled" disabled class="mt-3"
              @click="applyPromotion"></Button>

            <Divider />
          </div>
          <h3 class="text-2xl font-bold text-green-600 my-4">
            Price Breakdown
          </h3>
          <DataTable :value="getPriceBreakdown" class="w-full" table-style="min-width: 100%;" style="width: 100%;">
            <Column header="Name" style="min-width: 13rem;">
              <template #body="slotProps">
                {{ slotProps.data.attribute_option }} <br>
                {{ slotProps.data?.attribute_option?.includes('Selected configuration') ? currentConfigurationSKU :
                  slotProps?.data?.part_number || '' }}
              </template>
            </Column>
            <Column header="MAP">
              <template #body="slotProps">

                <span v-if="promotionApplied && slotProps.data?.discount" class="line-through">{{
                  formatPrice(slotProps.data.add_on_price_map) }}</span>
                <br v-if="promotionApplied && slotProps.data?.discount">
                {{ promotionApplied && slotProps.data?.discount ? formatPrice(slotProps.data.add_on_price_map * (1 -
                  slotProps.data.discount)) : formatPrice(slotProps.data.add_on_price_map) }}
              </template>
            </Column>
            <Column header="MSRP">
              <template #body="slotProps">
                <span v-if="promotionApplied && slotProps.data?.discount" class="line-through">{{
                  formatPrice(slotProps.data.add_on_price_msrp) }}</span>
                <br v-if="promotionApplied && slotProps.data?.discount">
                {{ promotionApplied && slotProps.data?.discount ? formatPrice(slotProps.data.add_on_price_msrp * (1 -
                  slotProps.data.discount)) : formatPrice(slotProps.data.add_on_price_msrp) }}
              </template>
            </Column>
            <Column
              v-if="userStore?.currentRole ? userStore.currentRole === 'DEALER' : userStore?.currentCompanyRole === 'DEALER'"
              :header="`${userStore.currentRole ?? userStore.currentCompanyRole ?? userStore?.company?.name ?? 'Your Company'} Cost`">
              <template #body="slotProps">
                <span v-if="promotionApplied && slotProps.data?.discount" class="line-through">{{
                  formatPrice(slotProps.data.add_on_price)
                  }}</span>
                <br v-if="promotionApplied && slotProps.data?.discount">
                {{ promotionApplied && slotProps.data?.discount ? formatPrice(slotProps.data.add_on_price * (1 -
                  slotProps.data.discount)) : formatPrice(slotProps.data.add_on_price) }}
              </template>
            </Column>
            <Column
              v-if="showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole) && (userStore?.currentRole ? userStore.currentRole !== 'DEALER' : userStore?.currentCompanyRole !== 'DEALER')"
              :header="`${userStore.currentRole ?? userStore.currentCompanyRole ?? userStore?.company?.name ?? 'Your Company'} Cost`">
              <template #body="slotProps">
                <span v-if="promotionApplied && slotProps.data?.discount" class="line-through">{{
                  formatPrice(slotProps.data[`add_on_price_${userStore?.currentRole ?
                    userStore.currentRole.toLowerCase() : userStore.currentCompanyRole.toLowerCase()}`])
                }}</span>
                <br v-if="promotionApplied && slotProps.data?.discount">
                {{ promotionApplied && slotProps.data?.discount ?
                  formatPrice(slotProps.data[`add_on_price_${userStore?.currentRole ?
                    userStore.currentRole.toLowerCase() : userStore.currentCompanyRole.toLowerCase()}`] * (1 -
                      slotProps.data.discount)) : formatPrice(slotProps.data[`add_on_price_${userStore?.currentRole ?
                        userStore.currentRole.toLowerCase() : userStore.currentCompanyRole.toLowerCase()}`]) }}
              </template>
            </Column>
            <!-- <Column v-if="showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
              :header="`${userStore.currentRole ?? userStore.currentCompanyRole ?? userStore?.company?.name ?? 'Your Company'} Cost`">
              <template #body="slotProps">
                <span v-if="promotionApplied && slotProps.data?.discount" class="line-through">{{
                  formatPrice(calculatePrice(slotProps.data.add_on_price,
                    userStore?.currentRole ?? userStore?.currentCompanyRole ?? 'MAP'
                  ))
                }}</span>
                <br v-if="promotionApplied && slotProps.data?.discount">
                {{ formatPrice(calculatePrice(slotProps.data.add_on_price,
                  userStore?.currentRole ?? userStore?.currentCompanyRole ?? 'MAP',
                  promotionApplied && slotProps.data?.discount ? slotProps.data.discount : 0
                )) }}
              </template>
            </Column> -->
          </DataTable>
        </div>

      </div>
    </div>

    <div v-if="selectedMaterial && currentImages.length > 0" class="w-full flex justify-center">
      <Galleria :value="currentImages"
        :key="currentImages.length ? `${selectedProduct?.product}-${selectedMaterial.attribute_option}-${currentImages[0].label}` : 0"
        :responsiveOptions="responsiveOptions" :numVisible="5" :circular="true"
        containerStyle="max-width: 600px; width: 100%" :showItemNavigators="true" :showItemNavigatorsOnHover="true"
        class="w-full">
        <template #item="slotProps">
          <img :src="slotProps.item.imgUrl" :alt="slotProps.item.label"
            style="width: auto; display: block; max-height: 340px;" class="mb-10" />
        </template>
        <template #thumbnail="slotProps">
          <div class="px-3">
            <img :src="slotProps.item.imgUrl" :alt="slotProps.item.label"
              style="display: block; width: auto; max-height: 120px;" />
          </div>
        </template>
        <template #caption="slotProps">
          <div class="text-xl mb-2 font-bold">{{ slotProps.item.label }}</div>
        </template>
      </Galleria>
    </div>

    <div v-if="selectedProduct && selectedProduct.product" class="self-start w-full flex items-center justify-between">
      <h2 class="self-start text-orange-900 text-lg font-semibold"> {{
        selectedProduct.product
      }} Part Numbers
      </h2>
    </div>
    <DataTable v-show="isVariationTableLoading" :value="Array.from(10)" class="w-full">
      <Column header="Name">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="SKU">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="MAP">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
      <Column header="MSRP">
        <template #body>
          <Skeleton></Skeleton>
        </template>
      </Column>
    </DataTable>
    <Tabs
      v-if="selectedProduct && selectedProduct.product && productVariations && Object.keys(productVariations).length > 0"
      :value="0" scrollable class="w-full">
      <TabList>
        <Tab v-for="(values, key, index) in productVariations" :key="key" :value="index">
          {{ key }}
        </Tab>
      </TabList>
      <TabPanels>
        <TabPanel v-for="(values, key, index) in productVariations" :key="`${key}-table`" :value="index">
          <!-- {{ values }} -->
          <DataTable :value="values" table-style="min-width: 100%;" striped-rows scrollable scroll-height="500px">
            <Column header="Product Name" style="min-width: 12rem;">
              <template #body="slotProps">
                {{ selectedProduct.product }}
              </template>
            </Column>
            <Column field="Name" header="Variation Name" style="min-width: 15rem;"></Column>
            <Column field="SKU" header="SKU" style="min-width: 15rem"></Column>
            <Column field="Price" header="MAP">
              <template #body="slotProps">
                {{ formatPrice(calculateRetailPrice(slotProps.data.Price, "MAP"))
                }}
              </template>
            </Column>
            <Column field="Price" header="MSRP">
              <template #body="slotProps">
                {{ formatPrice(calculateRetailPrice(slotProps.data.Price,
                  "MSRP")) }}
              </template>
            </Column>
            <Column v-if="showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)" field="Price"
              :header="`${userStore.currentRole ?? userStore.currentCompanyRole ?? userStore?.company?.name ?? 'Your Company'} Cost`">
              <template #body="slotProps">
                {{
                  formatPrice(calculatePrice(slotProps.data.Price, userStore.currentRole ?? userStore.currentCompanyRole
                    ?? 'MAP'))
                }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)" header="Dealer Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'DEALER')) }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)" header="Group Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'GROUP')) }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
              header="Landscape Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'LANDSCAPE')) }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
              header="Internet Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'INTERNET')) }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
              header="Distributor Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'DISTRIBUTOR')) }}
              </template>
            </Column>
            <Column v-if="!showRolePrice(userStore?.currentRole ?? userStore?.currentCompanyRole)"
              header="Master Distributor Cost">
              <template #body="slotProps">
                {{ formatPrice(calculatePrice(slotProps.data.Price, 'MASTER_DISTRIBUTOR')) }}
              </template>
            </Column>
          </DataTable>
        </TabPanel>
      </TabPanels>
    </Tabs>
    <div
      v-if="selectedProduct && selectedProduct.product && productVariations && Object.keys(productVariations).length > 0"
      class="w-full flex justify-end mr-2">
      <Button label="Download CSV" icon="pi pi-download" severity="info" @click="generateCSV" />
    </div>
  </div>
</template>

<script setup>
import FormulaDisplay from '@/components/FormulaDisplay.vue';
import { computed, onMounted, ref, watch } from 'vue';
import { useProduct } from '@/composables/product';
import { showRolePrice, calculatePrice, calculateRetailPrice, calculatePercentage, addSign } from '@/utils';
import { useUserStore } from '@/store/user';
import { useAppStore } from '@/store/app';
import router from '@/router';

const selectedProduct = ref();
const filteredProductsList = ref();
const eventQuery = ref("");
const selectedMaterial = ref();
const productVariations = ref();
const currentDealerPrice = ref({
  dealer_price: 0,
  material: 0,
});
const isVariationTableLoading = ref(false);
const selectedAddons = ref({});
const selectedAttributes = ref({});
const responsiveOptions = ref([
  {
    breakpoint: '1300px',
    numVisible: 4
  },
  {
    breakpoint: '575px',
    numVisible: 2
  }
]);

const promotionApplied = ref(false);

const accountPriceCards = ref([
  {
    id: 'master-distributor',
    label: 'Master Distributor',
    account: 'MASTER_DISTRIBUTOR',
    formula: '\\text{CEIL}(\\text{DealerPrice} \\times 0.8)'
  },
  {
    id: 'distributor',
    label: 'Distributor',
    account: 'DISTRIBUTOR',
    formula: '\\text{CEIL}(\\text{DealerPrice} \\times 0.85)'
  },
  {
    id: 'group',
    label: 'Group',
    account: 'GROUP',
    formula: "\\text{CEIL}(\\text{DealerPrice} \\times 0.92)",
  },
  {
    id: 'internet',
    label: 'Internet',
    account: 'INTERNET',
    formula: '\\text{CEIL}(\\text{DealerPrice} \\times 1.1)'
  },
  {
    id: 'landscape',
    label: 'Landscape',
    account: 'LANDSCAPE',
    formula: '\\text{CEIL}(\\text{DealerPrice} \\times 1.2)'
  }
]);

const retailPriceCards = ref([
  {
    id: 'map',
    label: 'MAP',
    account: 'MAP',
    formula: '\\text{CEIL}(\\text{CEIL}(\\text{DealerPrice} \\times 0.92) \\times 2)'
  },
  {
    id: 'msrp',
    label: 'MSRP',
    account: 'MSRP',
    formula: '\\text{CEIL}(\\text{CEIL}(\\text{DealerPrice} \\times 0.92) \\times 2.2)'
  }
])

const {
  products,
  materialAttributes,
  addOns,
  allAttributes,
  announcementsLength,
  loadProducts,
  loadMaterialAttributes,
  loadAttributes,
  loadAllAddons,
  generateProductVariations,
  retrieveAnnouncementsLength,
} = useProduct();

const userStore = useUserStore();
const appStore = useAppStore();

const currentProduct = computed(() => {
  return products.value.find((product) => product.id === selectedProduct.value?.id);
})

const searchProducts = (event) => {
  eventQuery.value = event.query;
  setTimeout(() => {
    if (!event.query.trim().length) {
      filteredProductsList.value = [...products.value];
    } else {
      const queryWords = event.query.toLowerCase().split(/\s+/);
      filteredProductsList.value = products.value.filter((product) => {
        const productName = product.product.toLowerCase();
        return queryWords.every((word) => productName.includes(word));
      })
    }
  }, 250);
}

const highlightMatch = (text) => {
  const queryWords = eventQuery.value.toLowerCase().split(/\s+/); // Split query into words
  let highlightedText = text;

  queryWords.forEach((word) => {
    if (word.trim()) {
      const regex = new RegExp(`(${word})`, "gi"); // Case-insensitive matching
      highlightedText = highlightedText.replace(regex, "<b>$1</b>");
    }
  });

  return highlightedText;
}

const getTotalDealerPrice = () => {
  let totalPrice = 0;
  Object.values(currentDealerPrice.value).forEach(value => {
    totalPrice += value;
  });
  Object.values(selectedAttributes.value).forEach(value => {
    totalPrice += (value?.add_on_price || 0);
  })
  return totalPrice;
}

const getSelectedAddonText = (key = null, optionName = null, partNumber = null, priceAddOn = null) => {
  let text = ``;
  if (key) text += `Selected ${key}:`;
  if (optionName) text += ` ${optionName}`;
  if (partNumber) text += ` (${partNumber})`;
  if (priceAddOn) text += ` +${formatPrice(calculateRetailPrice(priceAddOn, "MAP"))}`;
  return text;
}

const getSelectedAttributeText = (key = null, optionName = null) => {
  let text = ``;
  if (key) text += `Selected ${key}:`;
  if (optionName) text += ` ${optionName}`;
  return text;
}

const formatPrice = (price) => {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(price);
}

const textToKey = (text) => {
  return text.replace(/\s+/g, '_').toLowerCase();
}

const getAddons = computed(() => {
  return Object.values(selectedAddons.value).filter((addon) => addon.attribute_option !== 'None').map((addon) => ({
    ...addon,
    add_on_price_group: calculatePrice(addon.add_on_price, 'GROUP'),
    add_on_price_landscape: calculatePrice(addon.add_on_price, 'LANDSCAPE'),
    add_on_price_internet: calculatePrice(addon.add_on_price, 'INTERNET'),
    add_on_price_distributor: calculatePrice(addon.add_on_price, 'DISTRIBUTOR'),
    add_on_price_master_distributor: calculatePrice(addon.add_on_price, 'MASTER_DISTRIBUTOR'),
    add_on_price_map: calculateRetailPrice(addon.add_on_price, 'MAP'),
    add_on_price_msrp: calculateRetailPrice(addon.add_on_price, 'MSRP'),
  }));
});

const getPriceBreakdown = computed(() => {
  const priceBreakdown = [];
  if (selectedProduct.value && selectedProduct.value.base_price_dealer) {
    priceBreakdown.push({
      attribute_option: `Selected configuration for: ${selectedProduct.value.product}`,
      add_on_price: calculatePrice(getTotalDealerPrice(), 'DEALER'),
      add_on_price_group: calculatePrice(getTotalDealerPrice(), 'GROUP'),
      add_on_price_landscape: calculatePrice(getTotalDealerPrice(), 'LANDSCAPE'),
      add_on_price_internet: calculatePrice(getTotalDealerPrice(), 'INTERNET'),
      add_on_price_distributor: calculatePrice(getTotalDealerPrice(), 'DISTRIBUTOR'),
      add_on_price_master_distributor: calculatePrice(getTotalDealerPrice(), 'MASTER_DISTRIBUTOR'),
      add_on_price_map: calculateRetailPrice(getTotalDealerPrice(), 'MAP'),
      add_on_price_msrp: calculateRetailPrice(getTotalDealerPrice(), 'MSRP'),
      discount: selectedMaterial.value && selectedMaterial.value.discount && promotionApplied.value ? selectedMaterial.value.discount : 0,
    });
    if (getAddons.value.length > 0) priceBreakdown.push(...getAddons.value);
  }
  const total = {
    attribute_option: 'Total',
    add_on_price: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price * (1 - item.discount)) : item.add_on_price
    ), 0),
    add_on_price_group: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price_group * (1 - item.discount)) : item.add_on_price_group
    ), 0),
    add_on_price_landscape: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price_landscape * (1 - item.discount)) : item.add_on_price_landscape
    ), 0),
    add_on_price_internet: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price_internet * (1 - item.discount)) : item.add_on_price_internet
    ), 0),
    add_on_price_master_distributor: priceBreakdown.reduce((acc, item) => acc + (
      item.add_on_price_master_distributor
    ), 0),
    add_on_price_distributor: priceBreakdown.reduce((acc, item) => acc + (
      item.add_on_price_distributor
    ), 0),
    add_on_price_map: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price_map * (1 - item.discount)) : item.add_on_price_map
    ), 0),
    add_on_price_msrp: priceBreakdown.reduce((acc, item) => acc + (
      item?.discount ? (item.add_on_price_msrp * (1 - item.discount)) : item.add_on_price_msrp
    ), 0),
  };
  priceBreakdown.push(total);
  return priceBreakdown;
});

const onProductSelect = async () => {
  try {
    selectedMaterial.value = null;
    await loadMaterialAttributes(selectedProduct.value.product);
    materialAttributes.value.length > 0 ? selectedMaterial.value = materialAttributes.value[0] : selectedMaterial.value = null;
    loadProductVariations();
  } catch (e) {
    console.error(e);
  }
}

const loadProductVariations = async () => {
  try {
    isVariationTableLoading.value = true;
    productVariations.value = await generateProductVariations(selectedProduct.value);
  } catch (e) {
    console.error(e);
  } finally {
    isVariationTableLoading.value = false;
  }
}

watch(currentProduct, async () => {
  currentDealerPrice.value.dealer_price = currentProduct?.value?.base_price_dealer || 0;
}, {
  deep: true,
  immediate: true,
});

watch(selectedMaterial, async () => {
  if (selectedMaterial.value && selectedMaterial.value.attribute_option) {
    promotionApplied.value = false;
    currentDealerPrice.value.material = selectedMaterial.value.add_on_price;
    Object.keys(selectedAttributes.value).forEach(key => {
      selectedAttributes.value[key] = null;
    });
    await loadAttributes(
      null,
      selectedProduct.value?.product ?? null,
      selectedMaterial.value?.attribute_option ?? null,
      selectedProduct.value?.size ?? null,
      selectedProduct.value?.feature_type ?? null,
      selectedProduct.value?.fire_feature_category ?? null
    );
    Object.keys(allAttributes.value).forEach(key => {
      if (allAttributes.value[key].length > 0) {
        const selectedAttributeKey = textToKey(key);
        selectedAttributes.value[selectedAttributeKey] = allAttributes.value[key][0];
      } else {
        selectedAttributes.value[selectedAttributeKey] = null;
      }
    });
    await loadAllAddons(
      selectedProduct.value?.product ?? null,
      selectedProduct.value?.product_type ?? null,
      selectedMaterial.value?.attribute_option ?? null,
      selectedProduct.value?.size ?? null,
      selectedProduct.value?.feature_type ?? null,
      selectedProduct.value?.fire_feature_category ?? null,
      selectedProduct.value?.shape ?? null,
    );
    Object.keys(addOns.value).forEach(key => {
      if (addOns.value[key].length > 0) {
        selectedAddons.value[textToKey(key)] = addOns.value[key][0];
      }
    });
  }
});

const currentConfigurationSKU = computed(() => {
  let baseSKU = '';
  if (selectedProduct.value?.code_formula) {
    const placeholders = selectedProduct.value.code_formula.match(/{(.*?)}/g)?.map((p) => p.replace(/[{}]/g, '')) || [];
    baseSKU = selectedProduct.value.code_formula;
    if (placeholders.includes('MAT')) {
      baseSKU = baseSKU.replace('{MAT}', selectedMaterial.value?.attribute_code ?? '');
    }
    Object.keys(selectedAttributes.value).forEach(key => {
      if (selectedAttributes.value[key] && selectedAttributes.value[key].code_identifier && placeholders.includes(selectedAttributes.value[key].code_identifier)) {
        baseSKU = baseSKU.replace(`{${selectedAttributes.value[key].code_identifier}}`, selectedAttributes.value[key]?.attribute_code ?? '');
      }
    });
  }
  return baseSKU.replace(/\{[^}]*\}/g, "").replace(/--+/g, "-").replace(/^-+|-+$/g, "");
});

const generateCSV = () => {
  appStore.setLoading(true);
  const rows = Object.values(productVariations.value).flat();

  const headers = Object.keys(rows[0]);

  const cvsContent = [
    headers.join(','),
    ...rows.map(row => headers.map(header => `"${row[header]}"`).join(','))
  ].join('\n');

  const blob = new Blob([cvsContent], { type: 'text/csv;charset=utf-8' });
  const link = document.createElement('a');
  link.href = URL.createObjectURL(blob);
  link.download = `${textToKey(selectedProduct.value.product)}-part_numbers.csv`;
  link.click();
  URL.revokeObjectURL(link.href);
  setTimeout(() => {
    appStore.setLoading(false);
  }, 2000)
}

const extractImages = (imagesText) => {
  let images = [];
  if (imagesText) {
    images = imagesText.split(',').map(image => {
      const [label, imgUrl] = image.split(/:\s+/); // Split on the first ": " with optional whitespace
      return { label: label.trim(), imgUrl: imgUrl.trim() }; // Trim to clean up spaces
    });
  }
  return images;
}

const currentImages = computed(() => {
  const productImages = extractImages(selectedProduct.value?.images);
  const materialImages = extractImages(selectedMaterial.value?.images);
  return [...productImages, ...materialImages];
});

onMounted(async () => {
  await loadProducts();
  await retrieveAnnouncementsLength();
});

const flipCard = (id) => {
  const element = document.getElementById(id);
  if (element && element.children[0]) {
    element.children[0].style = 'transform: rotateY(.5turn)';
  }
}

const unflipCard = (id) => {
  const element = document.getElementById(id);
  if (element && element.children[0]) {
    element.children[0].style = 'transform: rotateY(0turn)';
  }
}

const showPromotion = computed(() => !!(selectedMaterial.value && selectedMaterial.value.promo_code && selectedMaterial.value.discount &&
  (userStore?.currentRole ? userStore.currentRole !== 'DISTRIBUTOR' : userStore.currentCompanyRole !== 'DISTRIBUTOR') &&
  (userStore?.currentRole ? userStore.currentRole !== 'MASTER_DISTRIBUTOR' : userStore.currentCompanyRole !== 'MASTER_DISTRIBUTOR')))

const applyPromotion = () => {
  promotionApplied.value = true;
};
</script>

<style lang="scss" scoped>
::v-deep .p-card .p-card-body {
  height: 100%;
}

::v-deep .p-card .p-card-content {
  margin-top: auto;
}

::v-deep .p-galleria-next-icon {
  color: red !important;
}

::v-deep .p-galleria-prev-icon {
  color: red !important;
}

.flip-card {
  perspective: 800px;
}

.flip-card__content {
  transform-style: preserve-3d;
}

// .flip-card:hover .flip-card__content {
//   transform: rotateY(.5turn);
// }

.flip-card__front,
.flip-card__back {
  backface-visibility: hidden;
}

.flip-card__back {
  transform: rotateY(.5turn);
}
</style>
