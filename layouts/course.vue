<template>
  <header>
    <nav class="flex justify-around items-center">
      <Button variant="link" label="Explore" />
      <a class="logo" href="">Nand Land</a>
      <div class="flex justify-between items-center gap-4">
        <LoginDialog />
      </div>
    </nav>
  </header>
  <slot />
</template>

<script lang="ts" setup>
const router = useRouter();
const route = useRoute();

useHead({
  bodyAttrs: {
    class: 'p-4'
  }
})
</script>