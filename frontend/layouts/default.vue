<template>
  <v-app>
    <theHeader />
        <v-main><!--v-main style="background-color: #fbfbfb" -->
            <nuxt />
            <!-- <div style="background-color: blue" class="pb-15" /> -->
        </v-main>
    <theFooter />
  </v-app>
</template>

<script>
import theHeader from '~/components/layouts/TheHeader.vue'
import theFooter from '~/components/layouts/TheFooter.vue'

export default {
  components: {
    theHeader,
    theFooter,
  },
}
</script>