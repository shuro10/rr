<template>
  <div>
    <v-app-bar :clipped-left="clipped" app color="#B0DFC1">
      <nuxt-link to="/" class="link">
        <v-toolbar-title class="headertitle">MeetWithKids</v-toolbar-title>
      </nuxt-link>

      <v-spacer />
      <v-text-field
        v-model="searchForm"
        class="mt-6 mr-9 white--text"
        dense
        full-width
        clearable
        color="white"
        rounded
        outlined
        flat
        label="タイトル検索"
        prepend-inner-icon="mdi-magnify"
      />

      <v-col cols="auto">
        <v-dialog transition="dialog-bottom-transition" max-width="600">
          <template v-slot:activator="{ on, attrs }">
            <v-btn
              text
              v-bind="attrs"
              class="ml-4 mr-2 font-weight-bold"
              color="white"
              v-on="on"
              >ヘルプ</v-btn
            >
          </template>
          <template v-slot:default="dialog">
            <v-card>
              <v-card-text>
                <schedule-card-info-init />
              </v-card-text>
              <v-card-actions class="justify-end">
                <v-btn text @click="dialog.value = false">Close</v-btn>
              </v-card-actions>
            </v-card>
          </template>
        </v-dialog>
      </v-col>

      <template v-if="!isLogin">
        <v-btn
          text
          class="ml-4 mr-2 font-weight-bold"
          color="white"
          @click.stop="loginDialog(true)"
        >
          ログイン
        </v-btn>
        <v-dialog v-model="loginModal" max-width="600px" persistent>
          <the-modal-login />
        </v-dialog>
        <v-btn
          class="ml-4 mr-2 white--text font-weight-bold"
          color="#E2C6C7"
          @click.stop="signUpDialog(true)"
        >
          新規登録
        </v-btn>
        <v-btn
          class="ml-4 mr-2 yellow--text font-weight-bold"
          color="orange"
          @click="guestLogin"
        >
          ゲストログイン
        </v-btn>
        <v-dialog v-model="signUpModal" max-width="600px" persistent>
          <the-modal-sign-up />
        </v-dialog>
      </template>
      <template v-else>
        <v-btn depressed rounded icon @click="logout"
          ><v-icon color="#E5F2E8">mdi-logout</v-icon></v-btn
        >
        <dialog-component :is-account-page="true" class="mt-5" />
      </template>
    </v-app-bar>
    <template v-if="search === '投稿' && resPosts.length">
      <schedule-card2 :posts="resPosts" />
    </template>
    <template v-else>
      <schedule-card class="mr-4 ml-4" />
    </template>
  </div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex'
/* TheHeader */
import _debounce from 'lodash.debounce'
import theModalSignUp from '~/components/layouts/TheModalSignUp.vue'
import theModalLogin from '~/components/layouts/TheModalLogin.vue'
import buttonGuestLogin from '~/components/layouts/ButtonGuestLogin.vue'
import dialogComponent from '~/components/layouts/DialogComponent.vue'
import scheduleCardInfoInit from '~/components/infoPost/ScheduleCardInfoInit.vue'

/* import searchPost from '~/components/search/SearchPost.vue' */
import ScheduleCard2 from '~/components/search/ScheduleCard2.vue'
/* import checkbox from '~/components/search/Checkbox.vue' */
import ScheduleCard from '~/components/infoPost/ScheduleCard.vue'

export default {
  components: {
    /* TheHeader */
    theModalSignUp,
    theModalLogin,
    dialogComponent,
    buttonGuestLogin,
    scheduleCardInfoInit,
    /* TheHeader */

    /* searchPost, */
    ScheduleCard2,

    /* checkbox, */
    ScheduleCard,
  },
  data() {
    return {
      clipped: true,
      loading: false,
      items: ['投稿', 'ユーザー'],
      category: [],
      searchForm: '',
      resPosts: [],
      resUsers: [],
      guest: {
        email: 'tester9520@gmail.com',
        password: 'KRVU3KcLVW7VDZD7iQZUVeDB9',
      },
    }
  },
  computed: {
    /* ========== ScheduleCard =========== */
    ...mapGetters({
      /* TheHeader */
      isLogin: 'auth/isLoggedIn',
      loginModal: 'modal/loginModal',
      signUpModal: 'modal/signUpModal',
      /* TheHeader */

      posts: 'post/posts',
      // user: 'user/user',
      // loginUser: 'auth/loginUser',
    }),
    // postUpdate() {
    // return this.$store.state.post.post
    // },
    /* ========== ScheduleCard =========== */

    /* ========== Search =========== */
    search: {
      get() {
        return this.$store.state.tab.search
      },
      set(val) {
        this.$store.dispatch('tab/getSearch', val)
      },
    },
  },
  watch: {
    searchForm() {
      _debounce(this.resSearch, 500)()
    },
  },
  methods: {
    /* TheHeader */
    ...mapActions({
      logout: 'auth/logout',
      login: 'auth/login',
      loginDialog: 'modal/loginUser',
      signUpDialog: 'modal/signUpUser',
    }),
    link(link) {
      this.$router.push({ path: `/${link}` })
    },
    guestLogin() {
      this.login(this.guest)
    },
    /* TheHeader */

    resSearch() {
      if (this.search === '投稿' && this.searchForm) {
        this.$axios
          .$get('api/v1/posts/search', {
            params: {
              search: this.searchForm,
            },
          })
          .then((res) => {
            this.resPosts = res
          })
          .catch((error) => {
            console.log(error)
          })
      } else if (this.search === 'ユーザー' && this.searchForm) {
        this.$axios
          .$get('api/v1/users/search', {
            params: {
              search: this.searchForm,
            },
          })
          .then((res) => {
            this.resUsers = res
          })
          .catch((error) => {
            console.log(error)
          })
      } else {
        this.resPosts = []
        this.resUsers = []
      }
    },
    catchCategory(category) {
      this.category = category
    },
  },
  /* ========== Search =========== */
}
</script>

<style scoped>
.headertitle {
  color: white;
  font-size: 40px;
  font-family: 'Gill Sans', sans-serif;
  /* https://developer.mozilla.org/en-US/docs/Web/CSS/font-family */
}
.link {
  text-decoration: none;
}
</style>
