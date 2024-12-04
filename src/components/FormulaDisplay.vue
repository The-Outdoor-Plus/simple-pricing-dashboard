MathLive Vue 3 Component with Correct Import

<template>
  <div class="math-display">
    <math-field class="text-lg" ref="mathFieldRef" :value="formula" :read-only="true" />
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'
import * as MathLive from 'mathlive'

// Define the props
const props = defineProps({
  formula: {
    type: String,
    required: true,
    default: ''
  }
})

// Create a ref for the math field
const mathFieldRef = ref(null)

// Optional: Initialize MathLive
onMounted(() => {
  if (mathFieldRef.value) {
    // MathLive.renderMathInDocument()
  }
})
</script>

<style scoped>
.math-display {
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 1.2em;
}
</style>
