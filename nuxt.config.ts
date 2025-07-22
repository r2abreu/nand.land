import material from "@primeuix/themes/material"
// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: false,
  compatibilityDate: '2025-07-15',
  devtools: { enabled: false },
  modules: ['@primevue/nuxt-module', '@nuxtjs/tailwindcss'],
  primevue: {
    options: {
      theme: {
        preset: material
      }
    }
  },
  tailwindcss: {
    exposeConfig: true,
    viewer: true,
  }
})