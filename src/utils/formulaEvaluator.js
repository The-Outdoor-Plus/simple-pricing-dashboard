/**
 * Evaluates a formula node with the given variables
 * @param {Array} nodes - The array of formula nodes to evaluate
 * @param {Object} variables - The variables available for the formula
 * @returns {number} The result of the evaluation
 */
export function evaluateFormula(nodes, variables) {
  if (!Array.isArray(nodes) || nodes.length === 0) {
    throw new Error('Invalid formula: empty or not an array');
  }

  // Convert infix notation to postfix (Reverse Polish Notation)
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

  // Evaluate the postfix expression
  const evalStack = [];
  for (const node of postfix) {
    if (node.type === 'number') {
      evalStack.push(node.value);
    } else if (node.type === 'variable') {
      if (!(node.value in variables)) {
        throw new Error(`Variable ${node.value} not found`);
      }
      evalStack.push(variables[node.value]);
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
        default:
          throw new Error(`Unknown function: ${node.value}`);
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
        default:
          throw new Error(`Unknown operation: ${node.value}`);
      }
    }
  }

  return evalStack[0] || 0;
}

/**
 * Validates a formula array
 * @param {Array} nodes - The array of formula nodes to validate
 * @returns {boolean} Whether the formula is valid
 */
export function validateFormula(nodes) {
  if (!Array.isArray(nodes) || nodes.length === 0) return false;

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
}

/**
 * Formats a formula array into a readable string
 * @param {Array} nodes - The array of formula nodes to format
 * @returns {string} A readable representation of the formula
 */
export function formatFormula(nodes) {
  if (!Array.isArray(nodes)) return '';

  return nodes
    .map((node) => {
      switch (node.type) {
        case 'number':
          return node.preview || node.value.toFixed(2);
        case 'variable':
          return node.preview || node.value;
        case 'operation':
          return (
            node.preview ||
            {
              add: '+',
              subtract: '-',
              multiply: '×',
              divide: '÷',
              leftParenthesis: '(',
              rightParenthesis: ')',
            }[node.value] ||
            ''
          );
        case 'function':
          return node.preview || node.value;
        default:
          return '';
      }
    })
    .join(' ');
}
