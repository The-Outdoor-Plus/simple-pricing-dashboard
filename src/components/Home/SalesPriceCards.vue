<template>
  <div class="w-full">
    <div>
      <h3 class="text-2xl text-blue-900 font-medium">Accounts Cost</h3>
      <Divider />
    </div>
    <div class="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-x-4 gap-y-6 lg:gap-y-8">
      <template v-for="(tierPrice, name) in salesPriceTiers" :key="name">
        <template v-if="tierPrice.every((tier) => tier.show_as === 'account_price')">
          <div :id="`flip-card-${name}`" class="flip-card hover:cursor-pointer">
            <div class="flip-card__content text-center relative p-20 transition-transform duration-700 mb-3 lg:mb-12">
              <Card class="flip-card__front absolute top-0 right-0 left-0" @click="flipCard(`flip-card-${name}`)">
                <template #title>
                  <div class="text-center">{{ name }} Price</div>
                </template>
                <template #footer>
                  <div class="flex gap-4 mt-1">
                    <Button :label="`Show ${name} Price`" severity="contrast" variant="outlined" class="w-full"
                      @click.prevent="flipCard(`flip-card-${name}`)" />
                  </div>
                </template>
              </Card>
              <Card class="flip-card__back absolute top-0 right-0 left-0" @click="unflipCard(`flip-card-${name}`)">
                <template #header>
                  <div class="w-full text-center pt-6 text-2xl font-semibold transition-all duration-300">
                    <template v-if="flippedCards.includes(`flip-card-${name}`)">
                      {{ formatPrice(evaluateFormula(tierPrice.find((tier) => tier.name === name)?.formula, {
                        basePrice: getTotalDealerPrice()
                      })) }}
                    </template>
                    <template v-else>
                      {{ name }} Price
                    </template>
                  </div>
                </template>
                <template #title>
                  <div class="text-center">{{ name }} Price</div>
                </template>
                <template #content>
                  <p class="text-lg text-center italic font-bold">
                    <!-- <FormulaDisplay :formula="card.formula" /> -->
                    {{
                      calculatePercentage(
                        evaluateFormula(tierPrice.find((tier) => tier.name === name)?.formula, {
                          basePrice: getTotalDealerPrice()
                        }),
                        getTotalDealerPrice(),
                      )
                    }}
                  </p>
                </template>
              </Card>
            </div>
          </div>
        </template>
      </template>
    </div>
    <div>
      <h3 class="text-2xl text-blue-900 font-medium">Retail Price</h3>
      <Divider />
    </div>
    <div class="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-5 gap-x-4 gap-y-8">
      <template v-for="(tierPrice, name) in salesPriceTiers" :key="name">
        <template v-if="tierPrice.every((tier) => tier.show_as === 'retail_price')">
          <div :id="`flip-card-${name}`" class="flip-card hover:cursor-pointer">
            <div class="flip-card__content text-center relative p-20 transition-transform duration-700 mb-8 lg:mb-14">
              <Card class="flip-card__front absolute top-0 right-0 left-0" @click="flipCard(`flip-card-${name}`)">
                <template #title>
                  <div class="text-center">{{ name }} Price</div>
                </template>
                <template #footer>
                  <div class="flex gap-4 mt-1">
                    <Button :label="`Show ${name} Price`" severity="contrast" variant="outlined" class="w-full"
                      @click.prevent="flipCard(`flip-card-${name}`)" />
                  </div>
                </template>
              </Card>
              <Card class="flip-card__back absolute top-0 right-0 left-0" @click="unflipCard(`flip-card-${name}`)">
                <template #header>
                  <div class="w-full text-center pt-6 text-2xl font-semibold">
                    {{ formatPrice(evaluateFormula(tierPrice.find((tier) => tier.name === name)?.formula, {
                      basePrice: getTotalDealerPrice()
                    })) }}
                  </div>
                </template>
                <template #title>
                  <div class="text-center">{{ name }} Price</div>
                </template>
                <template #content>
                  <p class="text-lg text-center italic font-bold">
                    <!-- <FormulaDisplay :formula="card.formula" /> -->
                    {{
                      calculatePercentage(
                        evaluateFormula(tierPrice.find((tier) => tier.name === name)?.formula, {
                          basePrice: getTotalDealerPrice()
                        }),
                        getTotalDealerPrice(),
                      )
                    }}
                    *
                  </p>
                  <span class="text-sm">* Percentage for retail price is approximate and is not 100% accurate. It
                    can
                    vary by &#177;1-3%
                  </span>
                </template>
              </Card>
            </div>
          </div>
        </template>
      </template>
    </div>
  </div>
</template>
<script setup>
import { usePricing } from '@/composables/pricing';
import { formatPrice } from '@/utils/pricing';
import { evaluateFormula } from '@/utils/formulaEvaluator';
import { calculatePercentage } from '@/utils';

const { flippedCards, setFlippedCards, salesPriceTiers, getTotalDealerPrice } = usePricing();

const flipCard = (id) => {
  const element = document.getElementById(id);
  if (element && element.children[0]) {
    element.children[0].style = 'transform: rotateY(.5turn)';
  }
  setFlippedCards([...flippedCards.value, id]);
};

const unflipCard = (id) => {
  const element = document.getElementById(id);
  if (element && element.children[0]) {
    element.children[0].style = 'transform: rotateY(0turn)';
  }
  setFlippedCards(flippedCards.value.filter((card) => card !== id));
};
</script>

<style lang="scss" scoped>
:deep(.p-card .p-card-body) {
  height: 100%;
}

:deep(.p-card .p-card-content) {
  margin-top: auto;
}

.flip-card {
  perspective: 800px;
}

.flip-card__content {
  transform-style: preserve-3d;
}

.flip-card__front,
.flip-card__back {
  backface-visibility: hidden;
}

.flip-card__back {
  transform: rotateY(0.5turn);
}
</style>
