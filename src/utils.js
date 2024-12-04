export const usePagination = (page, size) => {
  const limit = size ? +size : 3;
  const from = page ? page * limit : 0;
  const to = page ? from + size - 1 : size - 1;
  return { from, to };
};

export const calculatePrice = (dealerPrice, type = 'DEALER', promotion = 0) => {
  let promo = 1 - promotion;
  switch (type) {
    case 'DEALER':
      return dealerPrice * promo;
    case 'GROUP':
      return Math.ceil(dealerPrice * 0.92) * promo;
    case 'LANDSCAPE':
      return Math.ceil(dealerPrice * 1.2) * promo;
    case 'INTERNET':
      return Math.ceil(dealerPrice * 1.1) * promo;
    case 'MASTER_DISTRIBUTOR':
      return Math.ceil(dealerPrice * 0.8);
    case 'DISTRIBUTOR':
      return Math.ceil(dealerPrice * 0.85);
    default:
      return Math.ceil(Math.ceil(dealerPrice * 0.92) * 2) * promo;
  }
};

export const calculateRetailPrice = (dealerPrice, type = 'MAP', promotion = 0) => {
  let promo = 1 - promotion;
  switch (type) {
    case 'MAP':
      return Math.ceil(Math.ceil(dealerPrice * 0.92) * 2) * promo;
    case 'MSRP':
      return Math.ceil(Math.ceil(dealerPrice * 0.92) * 2.2) * promo;
    default:
      return Math.ceil(Math.ceil(dealerPrice * 0.92) * 2) * promo;
  }
};

export const showRolePrice = (role) => {
  switch (role) {
    case 'DEALER':
      return true;
    case 'GROUP':
      return true;
    case 'LANDSCAPE':
      return true;
    case 'INTERNET':
      return true;
    case 'MASTER_DISTRIBUTOR':
      return true;
    case 'DISTRIBUTOR':
      return true;
    default:
      return false;
  }
};

export const calculatePercentage = (priceToGet, dealerPrice) => {
  return `${addSign(Math.round(((priceToGet - dealerPrice) / dealerPrice) * 100))}%`;
};

export const addSign = (number) => {
  return number > 0 ? '+' + number : number < 0 ? '-' + Math.abs(number) : '0';
};
