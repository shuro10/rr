
<template>
<div>
    <p>index</p>
    <p>{{ Getters }}</p>
    <button @click="count(15)">{{ counter }}</button>
    <button @click="testflash">testflash</button>
    <button @click='flashMessage({
      message: "aaa",
      type: success,
      status: true,
    }), { root: true } '>flash</button>
      <button @click="getSomething">タスク取得</button>

  <v-snackbar
    v-model="status"
    transition="slide-x-reverse-transition"
    right
    top
    :color="type"
  >
    <div class="ml-5 font-weight-bold white--text">
      {{ message }}
    </div>
  </v-snackbar>

  <section class="container">
    isCalled: {{isCalled}}
  </section>

    <rinrei></rinrei>
</div>
</template>


<script>
import rinrei from '~/components/rinrei.vue'
import { mapGetters, mapActions } from "vuex"

export default {
  components: {
    rinrei,
  },
  computed: { 
      ...mapGetters({
      message: "flashMessage/message",
      type: "flashMessage/type",
      status: "flashMessage/status",
    }),
      ...mapGetters(['isCalled']),
      Getters() {
          return this.$store.getters;
      },
      ...mapGetters({ counter: "rinrei/counter" }),
      /* ...mapGetters("rinrei", ["counter"]), */
  },
  methods: {
      async getSomething() {
      await $axios.$get('/api/v1/users')
      /* const response = await this.$axios.$get("/api/v1/users") */
      },
      testflash() {
        return this.$store.dispatch(
            "flashMessage/showMessage", { 
              message: "Hello!",
              type: "sucess",
              status: true,
          }, { root: true } 
        )
      },
      ...mapActions({ flashMessage: "flashMessage/showMessage" }),
      ...mapActions({ count: "rinrei/countAction" }),
    //   count () {
    //     return this.$store.dispatch('rinrei/countAction', 3)
    // },
  } 
}
</script>




<style scoped>
div {
    border: 5px solid yellow;
}
</style>