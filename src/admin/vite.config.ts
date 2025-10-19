import { mergeConfig } from "vite";

export default (config) => {
  // Important: always return the modified config
  return mergeConfig(config, {
    server: {
      allowedHosts: [config.env("ADMIN_JWT_SECRET")],
    },
  });
};
