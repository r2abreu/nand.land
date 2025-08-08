import Nora from "@primeuix/themes/nora";
import PrimeUI from "tailwindcss-primeui";

// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: false,
  compatibilityDate: "2025-07-15",
  devtools: { enabled: false },
  modules: ["@primevue/nuxt-module", "@nuxtjs/tailwindcss"],
  primevue: {
    options: {
      theme: {
        preset: Nora,
        cssLayer: {
          name: "primevue",
          order: "theme, base, primevue",
        },
      },
    },
  },
  tailwindcss: {
    quiet: true,
    config: {
      plugins: [PrimeUI],
    },
    exposeConfig: true,
    viewer: true,
  },
});
