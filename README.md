# Meetwithkids


## トップページ
<br>

![TOP](/frontend/assets/images/readme/top1.jpg "TOP")
<br>




## AWS構成図
<br>

![AWS](/frontend/assets/images/infrastructure3.png "AWS")
<br>



## 使用した技術
* フロントエンド  
- HTML/CSS/JavaScript
- Nuxt.js + Vuetify
- Jest/ESLint/Prettier

* バックエンド 
- Ruby 2.7.1  
- Rails 6.0.3
- RSpec/Rubocop

* インフラ・開発環境  
- Docker
- CircleCI
- Terraform
- AWS (以下の構成図を参照)

## AWS構成図
<br>

![AWS](/frontend/assets/images/infrastructure3.png "AWS")
<br>


## ER図
<br>

![ER](frontend/assets/images/ER4.png "ER")
<br>


## 特にご覧になってほしい点、および技術の選定理由
* Dockerコンテナのデプロイを ECS (Fargate) 上で実現させている点。<br>
  * 目的：サーバレスの本番環境によるセキュリティ向上のため

* テストツールとコード解析ツールのチェックをパスしている点。<br>
  * フロントエンド側　……   JEST/ESLint/Prettier
  * バックエンド 側　……  　Rubocop/RSpec
  * 目的：可読性向上と早期エラー発見により開発速度を向上するため

* CircleCIで以上２点のパイプラインを構築して自動化させている点。
  * 目的：開発サイドの手間を減らし、ユーザビリティ向上の実現リソースを増やすため）

* Nuxt.js (SPAモード) と Rails (APIモード) により、ビューを高速化している点。<br>
  * 目的：普段忙しい親御さんのユーザビリティを向上させるため

* AWS を Terraform で完全コード化して、インフラを管理している点。<br>
  * 目的：サービス利用者にとって望ましいスケールに柔軟に対応するため


## 【機能一覧】
■ 基本機能
 ・新規会員登録・ログイン機能
 ・フォロー機能
 ・ユーザーマイページ表示（参加済・いいね・メッセージ・フォロー・フォロワー表示）
 ・ユーザー登録情報変更（アバター、ユーザーネーム、パスワード、メールアドレス）
 ・ユーザー削除
■ 投稿に関する機能
 ・ 新規投稿機能
 ・ 画像添付機能
 ・ 投稿の「お気に入り」機能
 ・ 投稿の「参加」機能
 ・ 投稿の「編集/削除」機能
 ・ 投稿の「検索」機能
 ・参加者表示機能
■ メッセージに関する機能
 ・メッセージ機能
 ・画像添付機能／プレビュー機能 
 ・メッセージの「編集/削除」機能
■ 管理者権限に関する機能
 ・投稿の「削除/編集」機能
 ・メッセージの「削除」機能
 ・ユーザーの「削除」機能





