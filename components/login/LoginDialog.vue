<template>
  <div class="card flex justify-center">
    <Button label="Login" @click="visible = true" />
    <Dialog
      v-model:visible="visible"
      modal
      header="Login"
      :style="{ width: '25rem' }"
    >
      <FloatLabel variant="in" class="mb-8">
        <label for="email" class="font-semibold">Email</label>
        <InputMask
          v-model="email"
          placeholder="jhon@doe.com"
          id="email"
          autocomplete="off"
        />
      </FloatLabel>
      <FloatLabel variant="in" class="mb-8">
        <Password inputId="password" />
        <label for="password" class="font-semibold">Password</label>
      </FloatLabel>
      <div class="flex justify-end gap-2">
        <Button
          type="button"
          label="Cancel"
          severity="secondary"
          @click="visible = false"
        ></Button>
        <Button type="button" label="Save" @click="visible = false"></Button>
      </div>
    </Dialog>
  </div>
</template>

<script setup>
import { ref } from "vue";

const visible = ref(false);
const email = ref("");
</script>
