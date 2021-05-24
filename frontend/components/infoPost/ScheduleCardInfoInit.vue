<template>
  <v-sheet class="rounded-card" elevation="5">
    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text"
        >
          MeetWithKids とは？
        </div>
      </div>
    </v-card-text>
    <v-card color="transparent" class="rounded-card " elevation="5">
      <v-img
        contain
        :src="require('@/assets/images/intro/ex1.jpg')"
      ></v-img> </v-card
    ><br />
    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        こんにちは！<br />
        このサイトはママパパのコミュニティを広げることを目指しています。<br />
        <br />
        昨今のコロナによって、家庭の孤立化が深まり、<br />
        多くの親御さんと子どもたちが精神的にダメージを受けました。<br /><br />
        「一生に一度しかない学校行事が中止になった」<br />
        「せっかくの大型連休で家族と出かけられる予定がなくなった」<br />
        「お友達と遊ばせてあげたいのに遊びにいかせることができない」<br />
        <br />
        しかし、ようやく回復の兆しが見えてきました。
        <br /><br />
        このサイトはバラバラになったコミュニティを再興するために、<br />
        以下の方々を対象にしています。<br />
        <br />
        ・コロナ禍のストレスを抱えたご家族のみなさま<br />
        ・子育ての悩みごとを打ち明けられないママパパ<br />
        ・子どもに体験を届けたいのに届けられない方々<br /><br />
        そうした方々のために、<br />
        このサイトが少しでも貢献できることを願っております。
      </v-card-text>
    </v-card>
    <v-card-text class="text-center align-self-center mt-10">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text"
        >
          制作背景
        </div>
      </div>
      <v-card color="transparent" class="rounded-card " elevation="5">
        <v-img
          contain
          :src="require('@/assets/images/intro/intro2.jpg')"
        ></v-img>
      </v-card>
    </v-card-text>
    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        学生時代に保育園で０〜１２歳の子どもの世話を1年間しました。<br />
        その場所で感じたことは、<br /><br />

        「親御さんは我が子の成長を望んでいるのに、<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        子育ての時間がとれないで悩んでいる」<br /><br />

        渋谷で子どもを預ける親御さんは基本的に共働きです。<br />

        それでも我が子のことを思って、
        幼い頃から幅広い年齢層の子と関わり合いを持てるようにと、
        預けてくださる方々がいました。<br /><br />

        一方で、そのような機会が得られない子どもが<br />
        どこかにいることも感じていました。<br />
      </v-card-text>
    </v-card>

    <v-card-text class="text-center align-self-center mt-10">
      <v-card color="transparent" class="rounded-card " elevation="5">
        <v-img contain :src="require('@/assets/images/iam3.jpg')"></v-img>
      </v-card>
    </v-card-text>

    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        私はプライベートでも、共働きの親御さんに代わって、<br />
        普段行けない場所に連れていくことがありました。<br />
        コロナが流行する前の頃です。<br /><br />
        そうした中で、もっとこんなふうに、子どもが体験できる機会が増えてほしいと思うようになりました<br />
        しかし、子どもにはその機会を手に入れる力がない。
        親御さんも子どもが成長できる機会を望んでいる。
        しかし、とにかく親御さんは時間がない。<br /><br />
        この問題を解決するために、以下のような機能にしました。
      </v-card-text>
    </v-card>

    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text mt-10"
        >
          参加までの簡単４クリック！
        </div>
      </div>
      <div class="orangecolor">
        <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
          ストレスフリーな参加手順
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
        たくさん押しても大丈夫。すぐに見返すことができます。
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
        ③<v-icon color="orange">mdi-walk</v-icon
        >を押して詳細を開いてみましょう。
      </div>

      <v-img
        contain
        class="mr-10 ml-10"
        :src="require('@/assets/images/intro/intro_post_dialog.png')"
      ></v-img>
      ④<v-icon>mdi-dots-run</v-icon> を押して完了です。

      <br /><br />
      <div class="caption">
        ※<v-icon>mdi-email-outline</v-icon>
        を押すとメッセージページに飛びます。<br />
        時間がある時にメッセージを送ってみましょう。
      </div>
    </v-card-text>

    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        このようにして、親御さんのような忙しい方々がストレスにならないように、
        サービスを提供しております。実現リソースは以下の通りです。<br /><br />
      </v-card-text>
    </v-card>

    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div
          class="display-1 shadow-text1 pink--text font-weight-bold no-wrap-text mt-10"
        >
          インフラ構成図
        </div>
        <div class="orangecolor">
          <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
            〜 早く迅速に、悩み事を抱え込んでしまわないように 〜
          </div>
        </div>
      </div>
      <v-img contain :src="require('@/assets/images/infrastructure3.png')">
      </v-img>
    </v-card-text>

    <v-card class="ml-2 mr-2" tile rounded-card>
      <v-card-text>
        <div class="text-center align-self-center"></div>
        ・Nuxt.js で SPA化 を実現して高速なウェブサイトを実現しました。<br />
        ・CircleCI でユーザの声をスムーズに実装できるようにしました。<br />
        ・Terraform を用いてインフラ対応も迅速にできるようにしています。<br /><br />

        その他、機能等の詳細については、
        <br />以下の <v-icon color="purple">mdi-github</v-icon>を押して、README
        をご覧ください。
      </v-card-text>
    </v-card>
    <v-card-text class="text-center align-self-center">
      <div class="orangecolor">
        <div class="shadow-text2 pink--text font-weight-bold no-wrap-text">
          制作者リンク
        </div>
      </div>
      <v-sheet class="d-flex align-center">
        <v-btn
          class="ma-2"
          color="white"
          href="https://qiita.com/Kent7"
          target="_blank"
        >
          <v-icon color="purple">mdi-github</v-icon>
        </v-btn>
        <v-btn
          class="ma-2"
          color="white"
          href="https://twitter.com/kent_0n"
          target="_blank"
        >
          <v-icon color="purple">mdi-twitter</v-icon>
        </v-btn>
        <v-btn
          class="ma-2"
          color="white"
          href="https://www.facebook.com/"
          target="_blank"
        >
          <v-icon color="purple">mdi-facebook</v-icon>
        </v-btn>
        <v-btn
          class="ma-2"
          color="white"
          href="https://qiita.com/Kent7"
          target="_blank"
        >
          <v-icon color="purple"></v-icon>
          qiita
        </v-btn>

        <v-btn
          class="ma-2"
          color="white"
          href="https://www.wantedly.com/id/kento_kikuchi720"
          target="_blank"
        >
          <v-icon color="purple"></v-icon>
          wantedly
        </v-btn>
      </v-sheet>
    </v-card-text>
    <v-sheet>
      <v-card class="rounded-card">
        <v-row>
          <v-col align-self="start" cols="5">
            <v-avatar size="200" tile class="mt-2 ml-4 mb-2">
              <v-img
                contain
                class="rounded-card "
                :src="require('@/assets/images/iam4.jpg')"
              >
              </v-img>
            </v-avatar>
          </v-col>
          <v-col cols="7">
            <v-list-item-group>
              <v-list-item color="rgba(0, 0, 0, .4)" class="gray--text">
                <v-list-item-content>
                  <v-list-item-title class="display-1">
                    Kento Kikuchi
                  </v-list-item-title>
                  <v-list-item-subtitle
                    >上智大学 経済学部卒</v-list-item-subtitle
                  >
                  <v-list-item-subtitle
                    >25歳 1995年7月20日生まれ</v-list-item-subtitle
                  >
                </v-list-item-content>
              </v-list-item>
              <v-list-item class="caption">
                “シンプルに考え、素直に行動する”<br />
                - 難しいことは分割し、<br />
                - 分割したら順序を立て、<br />
                - 正しい方向で努力をする。<br />
              </v-list-item>
            </v-list-item-group>
          </v-col>
        </v-row>
      </v-card>
    </v-sheet>
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
    post: {
      type: Object,
      default: () => ({}),
      required: true,
    },
  },
  data() {
    return {
      defaultImage: require(`@/assets/images/default.png`),
      reverse: true,
      years: [
        {
          color: 'primary',
          year: '1960',
        },
      ],
      tags: [
        'Work',
        'Home Improvement',
        'Vacation',
        'Food',
        'Drawers',
        'Shopping',
        'Art',
        'Tech',
        'Creative Writing',
      ],
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

svg {
  width: 100%;
  height: auto;
  overflow: visible;
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
