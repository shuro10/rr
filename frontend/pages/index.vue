
<template>
<div align="center">
    <p>index</p>
    <p>{{ Getters }}</p>




    <rinrei></rinrei>
</div>
</template>


<script>
import rinrei from '~/components/rinrei.vue'
import { mapGetters } from "vuex"

export default {
  components: {
    rinrei,
  },
  computed: { 
          Getters() {
          return this.$store.getters;
      },
  },
  methods: {

      async getSomething() {
      await $axios.$get('/api/v1/users')
      /* const response = await this.$axios.$get("/api/v1/users") */
      },

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