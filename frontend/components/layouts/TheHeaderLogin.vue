<template><!-- <template v-if="!loggedIn"> -->
    <div>
      <v-row
        justify="center"
      >
    
        <TheHeaderLoginModal3 />
        <TheHeaderLoginModal4 />

      </v-row>
    </div>
</template>
  

<script>
import { mapGetters, mapActions } from "vuex"
import TheHeaderLoginModal3 from "~/components/layouts/TheHeaderLoginModal3.vue"
import TheHeaderLoginModal4 from "~/components/layouts/TheHeaderLoginModal4.vue"

export default {
  components: {
      TheHeaderLoginModal3,
      TheHeaderLoginModal4,
  },
  data() {
    return {
    }
  },
}
</script>
