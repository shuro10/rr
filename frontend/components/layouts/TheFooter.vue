<template>
  <v-footer class="elevation-10 footertitle flex justify-center mt-5" color="#BADEC3" absolute>
    <div>&copy; {{ new Date().getFullYear() }}<span class="ml-2">MeetWithKids</span></div>
  </v-footer>
</template>

<style scoped>
.footertitle {
  color: white;
  font-size: 18px;
  font-family: 'Gill Sans', sans-serif;
  /* https://developer.mozilla.org/en-US/docs/Web/CSS/font-family */
}
</style>
