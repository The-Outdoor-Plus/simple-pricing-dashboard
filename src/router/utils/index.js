export const mapRoutes = (options, routes) => {
  routes.forEach((route) => {
    route.meta = { ...route.meta, ...options };
    if (route?.children.length > 0) route.children = mapRoutes(route.options, route.children);
  });
  return routes;
};
