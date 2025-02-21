<template>
  <div class="formula-builder">
    <div class="grid grid-cols-1 md:grid-cols-4 gap-4">
      <!-- Available Components Panel -->
      <div class="md:col-span-1 bg-gray-50 p-4 rounded-lg border">
        <h3 class="text-lg font-medium mb-4">Components</h3>

        <!-- Variables -->
        <div class="mb-4">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Variables</h4>
          <div class="space-y-2">
            <div class="formula-item variable p-2 bg-blue-100 rounded cursor-move" draggable="true"
              @dragstart="dragStart($event, { type: 'variable', value: 'basePrice', label: 'BasePrice/Dealer', preview: 'basePrice' })">
              Base Price/Dealer
            </div>
          </div>
        </div>

        <!-- Operations -->
        <div class="mb-4">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Operations</h4>
          <div class="space-y-2">
            <div v-for="op in operations" :key="op.value"
              class="formula-item operation p-2 bg-green-100 rounded cursor-move" draggable="true"
              @dragstart="dragStart($event, { type: 'operation', ...op })">
              {{ op.label }}
            </div>
          </div>
        </div>

        <!-- Functions -->
        <div class="mb-4">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Functions</h4>
          <div class="space-y-2">
            <div v-for="func in functions" :key="func.value"
              class="formula-item function p-2 bg-purple-100 rounded cursor-move" draggable="true"
              @dragstart="dragStart($event, { type: 'function', ...func })">
              {{ func.label }}
            </div>
          </div>
        </div>

        <!-- Numbers -->
        <div class="mb-4">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Number</h4>
          <div class="flex flex-col gap-2">
            <div class="flex items-center gap-2">
              <InputNumber v-model="customNumber" mode="decimal" :minFractionDigits="2" :maxFractionDigits="2"
                class="w-24" />
              <Button icon="pi pi-plus" rounded @click="createNumber" :disabled="!isValidNumber(customNumber)" />
            </div>
            <div v-if="savedNumber" class="formula-item number p-2 bg-yellow-100 rounded cursor-move" draggable="true"
              @dragstart="dragStart($event, { type: 'number', value: savedNumber, preview: savedNumber.toFixed(2) })">
              {{ savedNumber.toFixed(2) }}
            </div>
          </div>
        </div>
      </div>

      <!-- Formula Building Area -->
      <div class="md:col-span-3">
        <div class="bg-white p-4 rounded-lg border min-h-[200px]">
          <div class="formula-container min-h-[180px] flex flex-wrap gap-2 p-4" @dragover.prevent="dragOver"
            @drop.prevent="drop">
            <div v-for="item in formula" :key="item.id" class="formula-node p-2 rounded" :class="getNodeClass(item)"
              draggable="true" @dragstart="dragStart($event, item, true)">
              <div class="flex items-center gap-2">
                <span>{{ getNodeLabel(item) }}</span>
                <Button icon="pi pi-times" text rounded size="small" @click="removeNode(item)" />
              </div>
            </div>
          </div>
        </div>

        <!-- Formula Preview -->
        <div class="mt-4 p-4 bg-gray-50 rounded-lg border">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Formula Preview</h4>
          <div class="font-mono text-sm">
            {{ formatFormula }}
          </div>
        </div>

        <!-- Formula Test -->
        <div class="mt-4 p-4 bg-gray-50 rounded-lg border">
          <h4 class="text-sm font-medium text-gray-600 mb-2">Formula Test</h4>
          <div class="grid grid-cols-2 gap-4">
            <div>
              <label class="block text-sm font-medium text-gray-600 mb-1">Base Price (Dealer)</label>
              <InputNumber v-model="testInput" mode="decimal" :minFractionDigits="2" :maxFractionDigits="2"
                class="w-full" />
            </div>
            <div>
              <label class="block text-sm font-medium text-gray-600 mb-1">Result</label>
              <div class="font-mono text-sm p-2 bg-white rounded border">
                ${{ testResult.toFixed(2) }}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, watch, nextTick } from 'vue';
import { v4 as uuidv4 } from 'uuid';

const props = defineProps({
  modelValue: {
    type: Object,
    default: null
  }
});

const emit = defineEmits(['update:modelValue', 'update:valid']);

const formula = ref([]);
const customNumber = ref(null);
const savedNumber = ref(null);
const testInput = ref(100.00);
const testResult = ref(0);
const formulaValid = ref(false);

const operations = [
  { value: 'multiply', label: 'Multiply (×)', preview: 'x', isUnary: false, precedence: 2 },
  { value: 'divide', label: 'Divide (÷)', preview: '/', isUnary: false, precedence: 2 },
  { value: 'add', label: 'Add (+)', preview: '+', isUnary: false, precedence: 1 },
  { value: 'subtract', label: 'Subtract (-)', preview: '-', isUnary: false, precedence: 1 },
  { value: 'leftParenthesis', label: '(', preview: '(', isUnary: true, precedence: 0 },
  { value: 'rightParenthesis', label: ')', preview: ')', isUnary: true, precedence: 0 }
];

const functions = [
  { value: 'ceil', label: 'Ceiling', preview: 'ceil', isUnary: true },
  { value: 'floor', label: 'Floor', preview: 'floor', isUnary: true },
  { value: 'round', label: 'Round', preview: 'round', isUnary: true }
];

const dragStart = (event, item, isExisting = false) => {
  event.dataTransfer.effectAllowed = 'move';
  event.dataTransfer.setData('text/plain', JSON.stringify({
    ...item,
    id: isExisting ? item.id : uuidv4()
  }));
};

const dragOver = (event) => {
  event.preventDefault();
  event.dataTransfer.dropEffect = 'move';
};

const drop = (event) => {
  const data = JSON.parse(event.dataTransfer.getData('text/plain'));
  const index = formula.value.findIndex(item => item.id === data.id);

  // Create a new array instead of modifying the existing one
  let newFormula;
  if (index === -1) {
    // New item being added
    newFormula = [...formula.value, data];
  } else {
    // Reordering existing item
    newFormula = formula.value.filter(item => item.id !== data.id);
    newFormula.push(data);
  }

  // Update formula once with the new array
  formula.value = newFormula;

  // Validate and emit in the next tick to avoid recursive updates
  nextTick(() => {
    const isValid = validateFormula(newFormula);
    formulaValid.value = isValid;
    emit('update:valid', isValid);
    if (isValid) {
      emit('update:modelValue', newFormula);
    }
  });
};

const createNumber = () => {
  if (!isValidNumber(customNumber.value)) return;
  savedNumber.value = customNumber.value;
  customNumber.value = null;
};

const getNodeClass = (node) => {
  const baseClasses = 'shadow-sm cursor-move';
  switch (node.type) {
    case 'variable':
      return `${baseClasses} bg-blue-100`;
    case 'operation':
      return `${baseClasses} bg-green-100`;
    case 'function':
      return `${baseClasses} bg-purple-100`;
    case 'number':
      return `${baseClasses} bg-yellow-100`;
    default:
      return baseClasses;
  }
};

const getNodeLabel = (node) => {
  switch (node.type) {
    case 'variable':
      return node.label;
    case 'operation':
      return operations.find(op => op.value === node.value)?.label;
    case 'function':
      return functions.find(func => func.value === node.value)?.label;
    case 'number':
      return node.value.toFixed(2);
    default:
      return '';
  }
};

const isValidNumber = (num) => {
  return typeof num === 'number' && !isNaN(num);
};

const removeNode = (node) => {
  const index = formula.value.findIndex(n => n.id === node.id);
  if (index !== -1) {
    const newFormula = formula.value.filter(item => item.id !== node.id);
    formula.value = newFormula;

    // Validate and emit in the next tick
    nextTick(() => {
      const isValid = validateFormula(newFormula);
      formulaValid.value = isValid;
      emit('update:valid', isValid);
      if (isValid) {
        emit('update:modelValue', newFormula);
      }
    });
  }
};

const validateFormula = (nodes) => {
  if (!Array.isArray(nodes)) return false;
  if (nodes.length === 0) return false;

  let parenthesesCount = 0;
  let functionStack = [];
  let lastNode = null;

  for (let i = 0; i < nodes.length; i++) {
    const node = nodes[i];
    const nextNode = i < nodes.length - 1 ? nodes[i + 1] : null;

    // Check parentheses matching
    if (node.type === 'operation') {
      if (node.value === 'leftParenthesis') {
        parenthesesCount++;
      } else if (node.value === 'rightParenthesis') {
        parenthesesCount--;
        if (parenthesesCount < 0) return false;

        // Check if this closes a function's parentheses
        if (functionStack.length > 0) {
          functionStack.pop();
        }
      }
    }

    // Check function syntax
    if (node.type === 'function') {
      if (!nextNode || nextNode.type !== 'operation' || nextNode.value !== 'leftParenthesis') {
        return false; // Function must be followed by opening parenthesis
      }
      functionStack.push(node);
    }

    // Check operation syntax
    if (node.type === 'operation' && !node.isUnary) {
      if (!lastNode || !nextNode) return false; // Binary operations need both operands
      if (lastNode.type === 'operation' && !lastNode.isUnary) return false; // Can't have consecutive operations
    }

    // Check for valid number/variable placement
    if (node.type === 'number' || node.type === 'variable') {
      if (lastNode && (lastNode.type === 'number' || lastNode.type === 'variable')) {
        return false; // Can't have consecutive numbers/variables
      }
    }

    lastNode = node;
  }

  // Check if all parentheses are matched
  if (parenthesesCount !== 0) return false;

  // Check if all functions are properly closed
  if (functionStack.length > 0) return false;

  return true;
};

const evaluateFormula = (nodes) => {
  // First, convert infix notation to postfix (Reverse Polish Notation)
  const postfix = [];
  const stack = [];

  for (const node of nodes) {
    if (node.type === 'number' || node.type === 'variable') {
      postfix.push(node);
    } else if (node.type === 'function') {
      stack.push(node);
    } else if (node.type === 'operation') {
      if (node.value === 'leftParenthesis') {
        stack.push(node);
      } else if (node.value === 'rightParenthesis') {
        while (stack.length > 0 && stack[stack.length - 1].value !== 'leftParenthesis') {
          postfix.push(stack.pop());
        }
        stack.pop(); // Remove left parenthesis
        if (stack.length > 0 && stack[stack.length - 1].type === 'function') {
          postfix.push(stack.pop()); // Add function after its arguments
        }
      } else {
        while (
          stack.length > 0 &&
          stack[stack.length - 1].type === 'operation' &&
          stack[stack.length - 1].value !== 'leftParenthesis' &&
          stack[stack.length - 1].precedence >= node.precedence
        ) {
          postfix.push(stack.pop());
        }
        stack.push(node);
      }
    }
  }

  while (stack.length > 0) {
    if (stack[stack.length - 1].value === 'leftParenthesis') {
      throw new Error('Mismatched parentheses');
    }
    postfix.push(stack.pop());
  }

  // Now evaluate the postfix expression
  const evalStack = [];
  for (const node of postfix) {
    if (node.type === 'number') {
      evalStack.push(node.value);
    } else if (node.type === 'variable') {
      evalStack.push(testInput.value); // Use the preview input value for variables
    } else if (node.type === 'function') {
      const arg = evalStack.pop();
      switch (node.value) {
        case 'ceil':
          evalStack.push(Math.ceil(arg));
          break;
        case 'floor':
          evalStack.push(Math.floor(arg));
          break;
        case 'round':
          evalStack.push(Math.round(arg));
          break;
      }
    } else if (node.type === 'operation' && !node.isUnary) {
      const right = evalStack.pop();
      const left = evalStack.pop();
      switch (node.value) {
        case 'add':
          evalStack.push(left + right);
          break;
        case 'subtract':
          evalStack.push(left - right);
          break;
        case 'multiply':
          evalStack.push(left * right);
          break;
        case 'divide':
          if (right === 0) throw new Error('Division by zero');
          evalStack.push(left / right);
          break;
      }
    }
  }

  return evalStack[0] || 0;
};

const formatFormula = computed(() => {
  return formula.value.map(node => {
    switch (node.type) {
      case 'variable':
        return node.preview;
      case 'operation':
        return operations.find(op => op.value === node.value)?.preview || '';
      case 'function':
        return functions.find(func => func.value === node.value)?.preview || '';
      case 'number':
        return node.preview;
      default:
        return '';
    }
  }).join(' ');
});

// Keep only one watcher for test result updates
watch([() => formula.value, testInput], () => {
  if (formula.value.length > 0 && formulaValid.value) {
    try {
      testResult.value = evaluateFormula(formula.value);
    } catch (error) {
      console.error('Formula evaluation error:', error);
      testResult.value = 0;
    }
  } else {
    testResult.value = 0;
  }
}, { immediate: true });

// Watch for model value changes from parent
watch(() => props.modelValue, (newValue) => {
  if (newValue) {
    const parsed = JSON.parse(JSON.stringify(newValue));
    formula.value = parsed;
    formulaValid.value = validateFormula(parsed);
  }
}, { immediate: true });
</script>

<style scoped>
.formula-builder {
  .formula-container {
    min-height: 200px;
    border: 2px dashed #e2e8f0;
    border-radius: 0.5rem;
  }

  .formula-item {
    transition: all 0.2s;

    &:hover {
      transform: translateY(-1px);
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  }
}
</style>
