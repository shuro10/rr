<template>
  <v-sheet class="rounded-card" elevation="5">
    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text"
        >
          ヘルプ
        </div>
      </div>
    </v-card-text>
    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        このサイトはママパパのコミュニティを広げることを目指しています。<br />
        <br />
        昨今のコロナによって、ご家庭が繋がり合う機会を失い、<br />
        多くの親御さんと子どもたちが精神的にダメージを受けました。<br /><br />
        「一生に一度しかない学校行事が中止になった」<br />
        「大型連休で家族と出かけられたはずの予定がなくなった」<br />
        「お友達と遊ばせてあげたいのに遊びに行かせることができない」<br />
        <br /><br />
        そこで、当サイトは繋がりの機会を増やすことを目的として、<br />
        以下の方々を対象にしています。<br />
        <br />
        ・コロナ禍のストレスを抱えたご家族のみなさま<br />
        ・子育ての悩みごとを打ち明けられないママパパ<br />
        ・子どもに体験を届けたいのに届けられない方々<br />
      </v-card-text>
    </v-card>

    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text mt-10"
        >
          最初の手順          
        </div>
      </div>
      <div class="orangecolor">
        <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
        </div>
      </div>

      <v-img
        contain
        :src="require('@/assets/images/help/help1.gif')"
      ></v-img>
            ページ右上の「ゲストログイン」をクリック

    </v-card-text>




    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text mt-10"
        >
          参加までの４クリック！
        </div>
      </div>
      <div class="orangecolor">
        <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
          ページ遷移がないスムーズな参加手続
        </div>
      </div>
    </v-card-text>
    <v-card-text class="text-center align-self-center">
      <v-img
        contain
        :src="require('@/assets/images/intro/intro_heart.png')"
        class="mr-5 ml-5"
      ></v-img>
      <div class="mb-5">
        ①気になる募集があったら、<v-icon color="pink">mdi-heart-outline</v-icon
        >を押していきましょう。<br />
        たくさん押しても大丈夫。あとで見返すことができます。
      </div>
      <v-img
        contain
        :src="require('@/assets/images/intro/intro_search.png')"
      ></v-img>
      <div class="mb-10">
        ②<v-icon>mdi-dots-vertical</v-icon> で見返してみましょう。
      </div>

      <v-img
        contain
        :src="require('@/assets/images/intro/intro_like.png')"
        class="mr-10 ml-10"
      ></v-img>
      <div class="mb-10">
        ③このストックはいつでも見返せます。<br/>
        次に、<v-icon color="orange">mdi-walk</v-icon
        >を押して詳細を見てみましょう。
      </div>

      <v-img
        contain
        class="mr-10 ml-10"
        :src="require('@/assets/images/intro/intro_post_dialog.png')"
      ></v-img>
      ④詳細ページです。<v-icon color="red">mdi-run</v-icon> を押して参加完了です。

      <br /><br />
      <div class="caption">
        時間がある時には、 <v-icon color="orange">mdi-email-variant</v-icon>
        を押してメッセージを送りにいきましょう。<br />
      </div>
    </v-card-text>

    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text mt-10"
        >
          参加者リスト
        </div>
      </div>
      <div class="orangecolor">
        <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
      
        </div>
      </div>
    </v-card-text>
      <v-img
        contain
        :src="require('@/assets/images/help/help_follow.gif')"
      ></v-img>
<v-card-text class="text-center align-self-center">
  カード下部の <v-icon>mdi-run</v-icon> をクリック。フォローもできます。
</v-card-text>


  </v-sheet>
</template>

<script>
import { mapGetters } from 'vuex'
// import buttonLike from '~/components/layouts/ButtonLike.vue'
// import userAvatar from '~/components/infoUser/UserAvatar.vue'
// import postMessage from '~/components/infoPost/PostMessage.vue'

export default {
  components: {
    // buttonLike,
    // userAvatar,
    // postMessage,
  },
  props: {
    // post: {
    //   type: Object,
    //   default: () => ({}),
    //   required: true,
    // },
  },
  data() {
    return {
      defaultImage: require(`@/assets/images/default.png`),
      /* reverse: true, */
      dialog: false,
    }
  },
  computed: {
    ...mapGetters({
      posts: 'post/posts',
      loginUser: 'auth/loginUser',
    }),
  },
  created() {
    this.$axios
      .get(`api/v1/posts/${this.$route.params.id}`)
      .then((res) => {
        this.$store.commit('post/setPost', res.data, { root: true })
      })
      .then(() => {
        if (this.login) {
          this.post.join_users.forEach((f) => {
            if (f.id === this.user.id) {
              this.join = true
            }
          })
        }
      })
  },
  methods: {
    closeDialog() {
      this.dialog = false
    },
  },
}
</script>

<style scoped>
.rounded-card {
  border-radius: 20px;
}
.shadow-text1 {
  text-shadow: 1px 1px 2px #ffffff;
}
.shadow-text2 {
  text-shadow: 2px 2px 3px #ffffff;
  border-bottom: double;
}
.shadow-text3 {
  text-shadow: 2px 5px 50px;
}

text {
  fill: #333;
  stroke: #fff;
  stroke-width: 0.3;
  stroke-linejoin: round;
}

.orangecolor {
  background: #ffffff; /*背景色*/
  padding: 0.5em; /*文字周りの余白*/
  color: white; /*文字を白に*/
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 0.5em; /*角の丸み*/
}
</style>
