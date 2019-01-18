// assets/src/App.vue
<template>
  <div id="app">
    <header>
      <h1>Phoenix Vue</h1>
    </header>
    <main>
      <example></example>
    </main>
  </div>
</template>
<script>
  import Example from './components/Example'
  export default {
    name: 'app',
    components: {
      Example
    }
  }
</script>
<style>
  main {
    margin-top: 60px;
  }
</style>
