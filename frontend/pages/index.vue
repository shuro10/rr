<template>
  <div class="container">
    <div>
      <h1 class="title">
        I've achieved to deploy
      </h1>
      <h2 class="subtitle">
        {{ subTitle }}
      </h2>
      <button @click="getSomething">
        Alart Button
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      subTitle: 'ECS 突破した…😢'
    }
  },
  methods: {
    getSomething() {
      alert("Get Something!!")
    }
  },
}
</script>
