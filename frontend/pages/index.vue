<template>
  <div class="container">
    <div>
      <h1 class="title">
        Zenn-app
      </h1>
      <h2 class="subtitle">
        {{ subTitle }}
      </h2>
      <button @click="getSomething">
        タスク取得
      </button>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      subTitle: 'Zenn is good service!!'
    }
  },
  methods: {
    getSomething() {
      alert("Get Something!!")
    }
  },
}
</script>
