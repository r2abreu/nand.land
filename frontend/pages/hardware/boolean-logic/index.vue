<template>
  <section class="p-4 flex h-screen">
    <aside class="basis-1/3 p-4 rounded-sm bg-surface-600">
      <h2 class="text-2xl">Boolean Logic</h2>
      <ul class="bg-primary bg-transparent py-3">
        <li v-for="lesson of lessons">
          <p class="p-2 bg-surface-500">{{ lesson.name }}</p>
        </li>
      </ul>
    </aside>
    <main>
      <BooleanLogicLesson />
    </main>
  </section>
</template>

<script setup>
definePageMeta({
  layout: 'course'
})

const lessons = [
  { name: "Nand" },
  { name: "Not" },
  { name: "And" },
  { name: "Or" },
  { name: "Xor" },
  { name: "Multiplexer" },
  { name: "Demultiplexer" }
];

</script>