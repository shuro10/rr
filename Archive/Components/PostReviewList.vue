<template>
  <v-card flat>
    <v-list style="background-color: #fbfbfb">
      <v-card v-for="review in reviews" :key="review.id" flat class="mb-2">
        <post-review :review="review" />
      </v-card>
    </v-list>
  </v-card>
</template>

<script>
import PostReview from "~/components/infoPost/PostReview.vue"

export default {
  components: {
    PostReview,
  },
  props: {
    reviews: {
      type: Array,
      required: true,
    },
  },
}
</script>

<style scoped></style>
