User.create!(
  name: ENV['RAILS_ADMIN_USER'],
  email: ENV['RAILS_ADMIN_ADDRESS'],
  password: ENV['RAILS_ADMIN_KEY'],
  password_confirmation: ENV['RAILS_ADMIN_KEY'],
  admin: true
)

Post.create(
  user_id: 1,
  name: 'はじめまして',
  quickword: '早速、右下のボタンで募集ページをつくりましょう！',
  catchcopy: 'ご閲覧ありがとうございます',
  member: 3,
  place: '集合場所',
  category: '',
  price: '1000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/1_begin/image.jpg').open
)

# User.all.each do |user|
#     user.posts.create!(
#       name: 'nameテスト',
#       content: 'contentテキストテキストテキストテキスト'
#     )
#   end

User.create!(
  name: ENV['RAILS_GUEST_USER'],
  email: ENV['RAILS_GUEST_ADDRESS'],
  password: ENV['RAILS_GUEST_KEY'],
  password_confirmation: ENV['RAILS_GUEST_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/1_begin/user.jpg').open
)

User.create!(
  name: '優佳',
  email: 'test-3@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/3_born/user.jpg').open
)

Post.create(
  user_id: 3,
  name: '生まれました',
  quickword: 'いまあるしあわせを噛み締めて',
  catchcopy: '同じ境遇のママ友募集',
  details: '
  先日、息子を授かりました。二児です。
  ようやく気分の変化が落ち着いてきた頃なのですが、同じ失敗は繰り返したくないと思い、この記事を投稿します。

  「境遇」というと子育てには似つかわしくない言葉なのですけれど、

  最初の娘を授かった時は大変で、一人で色んなことを抱え込んでしまって鬱になってしまいました。
  どうして私一人が頑張っているんだろうと
  夜泣きに起こされたり、子どもの急病で仕事を早退したり、
  そんな最中、張り詰めていたものがプツンと切れて全てが嫌になってしまいました。

  幸い今は回復していますが、あの時に支えられていたことが理由です。

  コロナかで気持ちが塞ぎ込むことがあると思います。
  気分が落ち込むこともあり、

  私が辛かった時の頃をシェアしつつ、
  一緒に頑張っていければと思っています。よろしくお願いします。
  ',
  member: 5,
  place: '祖師谷',
  category: '',
  price: '0',
  start_time: '2000-01-01T06:00:00.000Z',
  finish_time: '2000-01-01T09:00:00.000Z',
  release: '2021-6-6',
  image: Rails.root.join('app/assets/images/3_born/image.jpg').open
)

User.create!(
  name: 'なぎさ',
  email: 'test-4@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/4_cook/user.jpg').open
)

Post.create(
  user_id: 4,
  name: 'お料理しましょ♪',
  quickword: '簡単手料理、健康、元気',
  catchcopy: '食事から丁寧な毎日を心がける',
  details: '
  自炊が
  毎日の負担にならないように
  週末に作り置きもできる。
  クックパッド300種レシピ公開中。
  刃物を使わない料理をしているので、ハサミがまだ使えないお子さんもぜひご参加ください。
  ',
  member: 3,
  place: '目黒',
  category: '',
  price: '3000',
  start_time: '2000-01-01T03:00:00.000Z',
  finish_time: '2000-01-01T06:00:00.000Z',
  release: '2021-6-20',
  image: Rails.root.join('app/assets/images/4_cook/image.jpg').open
)

User.create!(
  name: 'あやか',
  email: 'test-5@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/5_festival/user.jpg').open
)

Post.create(
  user_id: 5,
  name: '今年も行きます！',
  quickword: '家でも外でも夏を楽しもう！',
  catchcopy: 'コロナに打ち勝て！',
  details: '
  やってきました例大祭！

  昨年は色んな方にお世話になりました。
  息子も今から晴れ姿を決めて準備万端です。
  もういくつ寝ると祭りかな笑

  今年も運営を勤めるので少し目を離さないといけない時間が多くなりがちです。

  イベントもたくさんあるので一緒に回ってくれる方、募集中です。
  息子はスーパーボールすくいとワタアメが大好きです。
  ',
  member: 3,
  place: '渋谷金王八幡宮例大祭',
  category: '',
  price: '3000',
  start_time: '2000-01-01T00:00:00.000Z',
  finish_time: '2000-01-01T08:00:00.000Z',
  release: '2021-8-10',
  image: Rails.root.join('app/assets/images/5_festival/image.jpg').open
)

User.create!(
  name: 'Ema',
  email: 'test-6@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/6_read/user.jpg').open
)

Post.create(
  user_id: 6,
  name: 'Reading Session',
  quickword: 'I\'m looking forward to reading together!',
  catchcopy: 'Through books we discover a new world!',
  details: '
  Hello, let me introduce the session of ABC preschool 📚💕

  Reading is essential for a society with more equity!
  \nThrough\n books we discover a new world!
  Read a book! 📖

  Don\'t worry I am here to guide you.
  And I have helped a lot of family group for the elementary school entrance.
  ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T02:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-6-7',
  image: Rails.root.join('app/assets/images/6_read/image.jpg').open
)

User.create!(
  name: 'ゆりこ',
  email: 'test-7@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/6_bicycle/user.jpg').open
)

Post.create(
  user_id: 7,
  name: '自転車お出かけ',
  quickword: '息子の活動範囲が広がってきました。手が焼ける年頃ですが、親離れの時期でもあります',
  catchcopy: 'プチツーリング',
  details: '
  ようやく補助輪が片方外れました。
  まだまだ転ぶことも多いですが、うまいこと転ぶので、怪我をすることがなくなりました。
  あとちょっとかなと思うので、一緒に近場に遊びに行けるお友達がいてくれると嬉しいです。
  ',
  member: 3,
  place: '皇居周辺',
  category: '',
  price: '3000',
  start_time: '2000-01-01T01:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-6-3',
  image: Rails.root.join('app/assets/images/6_bicycle/image.jpg').open
)

User.create!(
  name: 'あや',
  email: 'test-8@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/7_summerfestival/user.jpg').open
)

Post.create(
  user_id: 8,
  name: '子ども浴衣教室',
  quickword: '可愛さと優雅さを兼ね備えた、一瞬の幼い時間',
  catchcopy: 'かけがえのない今を思い出に',
  member: 6,
  place: '四谷一丁目',
  category: '',
  price: '5000',
  start_time: '2000-01-01T02:00:00.000Z',
  finish_time: '2000-01-01T04:00:00.000Z',
  release: '2021-6-27',
  image: Rails.root.join('app/assets/images/7_summerfestival/image.jpg').open
)

User.create!(
  name: 'さやか',
  email: 'test-9@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/8_mama/user.jpg').open
)

Post.create(
  user_id: 9,
  name: '子育ての心配事',
  quickword: '大丈夫。今は辛いけれど、乗り越えた先には明るい未来が待っている',
  catchcopy: '一人で抱え込まないで',
  details: '
  子育ては支え合っていくもの。
  一人で我慢しないで。辛いことがあったら言葉にして教えて。
  理解できないこともあるかもしれない。だけど理解したい。
  そんな悪循環には陥らないで。ママも子どもも悲しい。
  笑顔を守りたい。
  私だって辛いことはある。でも乗り越え方を知っている。
  共に変化の激しい時代を渡っていきましょう。

  メッセージ待っています。
  ',
  member: 5,
  place: '井の頭公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T03:00:00.000Z',
  finish_time: '2000-01-01T06:00:00.000Z',
  release: '2021-6-7',
  image: Rails.root.join('app/assets/images/8_mama/image.jpg').open
)

User.create!(
  name: 'Miyo',
  email: 'test-10@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/9_ballet/user.jpg').open
)

Post.create(
  user_id: 10,
  name: 'バレエ行きませんか？',
  quickword: 'まだ始めたばかりです。',
  catchcopy: '至急！お願い！',
  details: '
  身近に通えるバレエ教室は娘にとって少々ハードルが高くついていけるか… ちょっと心配です。
  私は小さい頃、おばあちゃんに連れられていった劇場で白鳥の湖を見たことがきっかけでバレエに憧れました。
  しかし過渡期の受験競争を経験した父は教育熱心で…、結局バレエを諦めてしまったのですが…。
  そんな時に一緒に舞台に行ったところ、なんと娘もバレエをやりたい！と言ってくれて。すごく嬉しかったです。

  …とここまでは良かったのですが、最寄りで通えるバレエ教室は初心者には少しハードで。
  一緒に通える友達がいると、娘の気持ちも変わると思うので、
  一緒に通いたい人、これから何か習い事をさせたい人、ぜひぜひメッセージください！
  ',
  member: 1,
  place: '池袋',
  category: '',
  price: '4000',
  start_time: '2000-01-01T04:30:00.000Z',
  finish_time: '2000-01-01T06:30:00.000Z',
  release: '2021-6-21',
  image: Rails.root.join('app/assets/images/9_ballet/image.jpg').open
)

User.create!(
  name: 'みさき',
  email: 'test-11@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  profile: 'サッカー好きよ〜！集まれ〜！/週末フットサル/',
  image: Rails.root.join('app/assets/images/10_football/user.jpg').open
)

Post.create(
  user_id: 11,
  name: 'サッカーガール',
  quickword: 'スポ友募集😆',
  catchcopy: 'チームなでしこキッズ',
  details:
  '
  ヤッホー！なんと娘がサッカーにハマり出し始めました。
  私からの影響多めかも🤣 いつも一緒にテレビで応援してた✨

  でも先日入ったクラブでは小学生でも力の差があって…。
  先日も喧嘩になって泣いちゃって。嫌にならないといいんだけど。
  でも女の子だからって言われても負けないところは私と一緒なんだけど🤗

  でも女の子の友達がいたらもっと好きになると思うんだ〜

  そんなわけで女の子のプレイヤー募集！チームなでしこ作っちゃいましょう！
  ちなみに、長女なので面倒見は良いです笑  はじめての子でも奮って遊びに来てください❗️

  SWC の応援しましょ👍 がんばれ日本🙌
  Instagram @misaki_soccer777
  ',

  member: 8,
  place: '江戸川河川敷',
  category: '',
  price: '0',
  start_time: '2000-01-01T00:00:00.000Z',
  finish_time: '2000-01-01T06:00:00.000Z',
  release: '2021-6-21',
  image: Rails.root.join('app/assets/images/10_football/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-12@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/11_baseball/user.jpg').open
)

Post.create(
  user_id: 12,
  name: '野球とかしよう',
  quickword: '一度きりの人生を楽しもう！',
  catchcopy: '体を動かして元気ハツラツ',
  details: '
  こんにちは、38歳会社員です。最近空いた時間に息子と野球をしています。
  野球チームに入団させるのもいいのですが、
  共働きだと送り迎えの負担が大きく、また野球大会にいつもひとりぼっちにさせてしまうだろうことから、
  親子の時間を大切にしています。

  今回「野球」というタイトルにしましたが、
  息子は遊び盛りで色んなスポーツが大好きです。
  連れて行ってくれる友達がいると私も安心します。
  野球に限らず、一緒にスポーツをしてくれる仲間募集中です！
  ',
  member: 3,
  place: '石神井公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T01:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/11_baseball/image.jpg').open
)

User.create!(
  name: '雪枝',
  email: 'test-13@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/12_study/user.jpg').open
)

Post.create(
  user_id: 13,
  name: '小学校受験する子いますか？',
  quickword: 'どうやって勉強を進めていますか？',
  catchcopy: '相談相手がほしいです',
  details: '子どもが　小学校受験を考えています。
  一度熱中すると自分の世界に入り込んでしまうのですが、
  応援したい気持ちもあり、背中を見守ろうと思います。
  ',
  member: 4,
  place: 'Zoom',
  category: '',
  price: '0',
  start_time: '2000-01-01T06:00:00.000Z',
  finish_time: '2000-01-01T07:00:00.000Z',
  release: '2021-11-15',
  image: Rails.root.join('app/assets/images/12_study/image.jpg').open
)

User.create!(
  name: '義晴',
  email: 'test-14@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/13_753/user.jpg').open
)

Post.create(
  user_id: 14,
  name: 'あれから2年が経ちました',
  quickword: '時間が経つのはあっという間ですね！',
  catchcopy: '娘の成長が楽しみです',
  member: 3,
  details: '仕事であまりかまってあげられず
  先日ようやく休みをもらって７５３に
  あっという間に大きくなってしまって時間が経つのが早いです。
  私自身、少し世代が違っておりまして、
  そんな中で一緒にできればと思います。
  まだまだ慣れていないことが多々ありますが、よろしくお願いいたします。
  ',
  place: '神田明神',
  category: '',
  price: '500',
  start_time: '2000-01-01T04:00:00.000Z',
  finish_time: '2000-01-01T07:30:00.000Z',
  release: '2021-6-15',
  image: Rails.root.join('app/assets/images/13_753/image.jpg').open
)

User.create!(
  name: 'えりか',
  email: 'test-15@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/14_takeyou/user.jpg').open
)

Post.create(
  user_id: 15,
  name: 'お迎え承ります',
  quickword: 'ワーママ応援',
  catchcopy: '渋谷小学校のママさんへ',
  details: '
  お仕事で疲れて子どもの面倒を見られない…。そんなお困りありませんか？
  私も2年前までそうでした。ポジティブ教育で自己肯定感を養って。
  ワーママを応援したい！
  #夫が単身赴任で海外転勤中。
  #在宅でコツコツ副業中。在宅勤務のコツも教えます！
  ',
  member: 4,
  place: '松濤周辺',
  category: '',
  price: '0',
  start_time: '2000-01-01T07:30:00.000Z',
  finish_time: '2000-01-01T09:30:00.000Z',
  release: '2021-6-10',
  image: Rails.root.join('app/assets/images/14_takeyou/image.jpg').open
)

User.create!(
  name: '柏木',
  email: 'test-16@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/15_mamaparty/user.jpg').open
)

Post.create(
  user_id: 16,
  name: 'ゆるりママパパ会',
  quickword: '困ったときの助け合いネットワーク',
  catchcopy: 'みんなで支え合えば心強い',
  details: '
  ミートウィズキッズが発足して今日で３ヶ月目。
  心理カウンセラー、養護教諭、そして看護師の３人から始まったママパパコミュニティでしたが、今は１５人前後のグループとなりました。
  当初の理念は「精神的に有事な際に繋がる場」でしたが、
  今ではコロナとの共存を念頭において、「張り詰めた気持ちをほどくコミュニティ」として運営しております。

  自粛しなければいけないこともあります。気持ちが塞ぎがちになることもあります。
  親御さんの皆さんもストレスがたまりがちかと思いますが、それは子どもにだって同じです。

  アルコールはNGですが、お話はいくらだって聞きます。
  みんな色んなことを抱えてがんばっています。一緒にがんばりましょう。

  ママパパ比 ５：１ です。ぜひお子さんとご一緒にご参加ください。
  まずは一言でもいいのでメッセージからどうぞ！
  ',
  member: 15,
  place: '神田',
  category: '',
  price: '3000',
  start_time: '2000-01-01T01:00:00.000Z',
  finish_time: '2000-01-01T07:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/15_mamaparty/image.jpg').open
)

User.create!(
  name: 'Judy',
  email: 'test-17@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/16_confused/user.jpg').open
)

Post.create(
  user_id: 17,
  name: 'Help me...',
  quickword: 'Stay Home. It should be right. But it\'s stressfull, isn\'t it?',
  catchcopy: 'Unfortunately, the exam...',
  details:
  'This is Judy. I\'m back home and planning for my next examination.
  But, It\’s going to be out of my way.
  Unfortunately, University\’s dormitory became closed.
  And now, I have to take care of sisters. I can\'t leave them to my grandmother. Also, to my working parents.
  I liked to take care of kids... I could\'nt concentrate. So, please give messages to me.',
  member: 99,
  place: 'Yotsuya',
  category: '',
  price: '0',
  start_time: '2000-01-01T03:00:00.000Z',
  finish_time: '2000-01-01T02:59:00.000Z',
  release: '2021-6-10',
  image: Rails.root.join('app/assets/images/16_confused/image.jpg').open
)

User.create!(
  name: 'ひろたか',
  profile: 'エンジニアをしています。',
  email: 'test-18@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/17_programing/user.jpg').open
)

Post.create(
  user_id: 18,
  name: 'プログラミングしよう',
  quickword: 'フォロバします',
  catchcopy: 'Zoomでチャットしてくれる方',
  details: '
  最近息子がプログラミングに目覚めました。絵本よりもパソコン派です。
  簡単なプログラミングを覚えてから、今ではもくもくとキーボードをいじっているのですが、
  引きこもりになりがちなので、外との繋がりをつくってあげたいところです。

  息子は少しシャイなところがあるのですが、友達を大切にする子です。

  プログラミングをしているお子さんいらっしゃいませんか？
  仕事でエンジニアをしているので何かありましたらフォローします。

  ネット上であれば気軽に繋がれると思うので、メッセージください！

　よろしくお願いします！！
  ',
  member: 3,
  place: 'オンライン',
  category: '',
  price: '3000',
  start_time: '2000-01-01T03:00:00.000Z',
  finish_time: '2000-01-01T08:00:00.000Z',
  release: '2021-6-19',
  image: Rails.root.join('app/assets/images/17_programing/image.jpg').open
)

User.create!(
  name: 'Cheng',
  email: 'test-19@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/18_whatup/user.jpg').open
)

Post.create(
  user_id: 19,
  name: 'Hi, brother! From Ueno',
  quickword: 'What\'s up!',
  catchcopy: 'Japan\'s GREAT!!',
  details: '
  Hi there! I\'m Cheng. And, Sue, my daughter.
  Welcome to my page. I am from Davao city, Philippines.
  I\'m passionate, supportive and dedicated to Japan. I love here!
  I\'ve teached in primary school as ALT.
  So, I wanna know MORE for Japan!
  You can communicate with Japanese.
  Come and join me and let me know about Japan!
  ',
  member: 2,
  place: 'Ueno',
  category: '',
  price: '0',
  start_time: '2000-01-01T00:00:00.000Z',
  finish_time: '2000-01-01T08:00:00.000Z',
  release: '2021-6-26',
  image: Rails.root.join('app/assets/images/18_whatup/image.jpg').open
)

User.create!(
  name: 'よしこ',
  email: 'test-20@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/19_chat/user.jpg').open
)

Post.create(
  user_id: 20,
  name: '初投稿です',
  quickword: '初投稿です。よろしくお願いします。',
  catchcopy: '気軽に週末にお話でも',
  details: '初投稿です。不慣れなことがあると思いますが、お友達になってくれる人がいると嬉しいです。
  気軽に声をかけてください。
  趣味は映画鑑賞で、ジブリ映画が大好きです。耳をすませばをよく娘と一緒に見ています。
  特技は和菓子づくりです。今はお店を経営していませんが、以前伯父と一緒に浅草で和菓子屋を営んでいました。
  一緒にお菓子を食べてゆっくりお茶でもしたいなと思っています。よろしくお願いします。
  ',
  member: 3,
  place: '代々木公園',
  category: '',
  price: '0',
  start_time: '2000-01-01T01:00:00.000Z',
  finish_time: '2000-01-01T04:00:00.000Z',
  release: '2021-6-27',
  image: Rails.root.join('app/assets/images/19_chat/image.jpg').open
)

User.create!(
  name: 'ゆうは',
  email: 'test-21@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/21.jpg').open
)

User.create!(
  name: 'りなこ',
  email: 'test-22@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/22.jpg').open
)

User.create!(
  name: 'しょうこ',
  email: 'test-23@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/23.jpg').open
)

User.create!(
  name: 'Jane',
  email: 'test-24@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/24.jpg').open
)

User.create!(
  name: 'かりん',
  email: 'test-25@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/25.jpg').open
)

User.create!(
  name: 'みか',
  email: 'test-26@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/26.jpg').open
)

User.create!(
  name: 'Christina',
  email: 'test-27@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/27.jpg').open
)

User.create!(
  name: 'かおり',
  email: 'test-28@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/28.jpg').open
)

User.create!(
  name: 'ゆず',
  email: 'test-29@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/29.jpg').open
)

User.create!(
  name: 'はるか',
  email: 'test-30@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/30.jpg').open
)

User.create!(
  name: 'あきのぶ',
  email: 'test-31@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/31.jpg').open
)

User.create!(
  name: 'Steve',
  email: 'test-32@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/32.jpg').open
)

User.create!(
  name: 'あきお',
  email: 'test-33@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/33.jpg').open
)

User.create!(
  name: 'はると',
  email: 'test-34@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/34.jpg').open
)

User.create!(
  name: 'Alen',
  email: 'test-35@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/35.jpg').open
)

User.create!(
  name: 'Michael',
  email: 'test-36@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/36.jpg').open
)

User.create!(
  name: 'かずと',
  email: 'test-37@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/37.jpg').open
)

User.create!(
  name: 'しょう',
  email: 'test-38@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/38.jpg').open
)

User.create!(
  name: 'ゆきお',
  email: 'test-39@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/39.jpg').open
)

User.create!(
  name: 'Jay',
  email: 'test-40@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/40.jpg').open
)

User.create!(
  name: 'なつみ',
  email: 'test-41@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/21.jpg').open
)

User.create!(
  name: 'ようこ',
  email: 'test-42@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/42.jpg').open
)

User.create!(
  name: 'Marie',
  email: 'test-43@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/43.jpg').open
)

User.create!(
  name: 'Katy',
  email: 'test-44@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/44.jpg').open
)

User.create!(
  name: 'みどり',
  email: 'test-45@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/45.jpg').open
)

User.create!(
  name: 'るりこ',
  email: 'test-46@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/guestusers/46.jpg').open
)

User.create!(
  name: 'よりこ',
  email: 'test-47@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/47.jpg').open
)

User.create!(
  name: 'すずか',
  email: 'test-48@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/48.jpg').open
)

User.create!(
  name: 'あおい',
  email: 'test-49@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/49.jpg').open
)

User.create!(
  name: 'ゆい',
  email: 'test-50@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/50.jpg').open
)

User.create!(
  name: 'けいすけ',
  email: 'test-51@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/51.jpg').open
)

User.create!(
  name: 'まりこ',
  email: 'test-52@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/52.jpg').open
)

User.create!(
  name: 'はやと',
  email: 'test-53@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/53.jpg').open
)

User.create!(
  name: 'おさむ',
  email: 'test-54@gmail.com',
  password: ENV['RAILS_FOLLOWUSER_KEY'],
  password_confirmation: ENV['RAILS_FOLLOWUSER_KEY'],
  admin: false,

  image: Rails.root.join('app/assets/images/guestusers/54.jpg').open
)

join = Post.find(2)
join.post_joins.create(
  [
    { user_id: 26 },
    { user_id: 29 },
    { user_id: 30 },
    { user_id: 48 }
  ]
)

topic = Post.find(2)
topic.messages.create(
  [
    { user_id: 21, post_id: 2, title: 'Hi', content: 'Yeah' }
  ]
)

join = Post.find(3)
join.post_joins.create(
  [
    { user_id: 37 },
    { user_id: 47 },
    { user_id: 25 }
  ]
)

join = Post.find(4)
join.post_joins.create(
  [
    { user_id: 38 },
    { user_id: 28 },
    { user_id: 39 }
  ]
)

join = Post.find(5)
join.post_joins.create(
  [
    { user_id: 27 },
    { user_id: 36 },
    { user_id: 32 },
    { user_id: 43 },
    { user_id: 44 }
  ]
)

join = Post.find(6)
join.post_joins.create(
  [
    { user_id: 37 }
  ]
)

join = Post.find(7)
join.post_joins.create(
  [
    { user_id: 21 },
    { user_id: 22 },
    { user_id: 29 },
    { user_id: 30 }
  ]
)

join = Post.find(8)
join.post_joins.create(
  [
    { user_id: 23 },
    { user_id: 30 },
    { user_id: 34 },
    { user_id: 45 }
  ]
)

join = Post.find(9)
join.post_joins.create(
  [
    { user_id: 42 }
  ]
)

join = Post.find(10)
join.post_joins.create(
  [
    { user_id: 22 },
    { user_id: 30 },
    { user_id: 36 },
    { user_id: 41 },
    { user_id: 54 }
  ]
)

join = Post.find(11)
join.post_joins.create(
  [
    { user_id: 38 },
    { user_id: 49 }
  ]
)

join = Post.find(12)
join.post_joins.create(
  [
    { user_id: 21 },
    { user_id: 51 },
    { user_id: 52 }
  ]
)

join = Post.find(13)
join.post_joins.create(
  [
    { user_id: 31 }
  ]
)

join = Post.find(14)
join.post_joins.create(
  [
    { user_id: 25 },
    { user_id: 30 },
    { user_id: 47 }
  ]
)

join = Post.find(15)
join.post_joins.create(
  [
    { user_id: 21 },
    { user_id: 36 },
    { user_id: 41 },
    { user_id: 47 },
    { user_id: 49 },
    { user_id: 50 },
    { user_id: 54 },
    { user_id: 34 },
    { user_id: 33 },
    { user_id: 31 },
    { user_id: 23 },
    { user_id: 22 },
    { user_id: 24 }
  ]
)

join = Post.find(16)
join.post_joins.create(
  [
    { user_id: 27 }
  ]
)

join = Post.find(17)
join.post_joins.create(
  [
    { user_id: 49 },
    { user_id: 53 }

  ]
)

join = Post.find(18)
join.post_joins.create(
  [
    { user_id: 32 }

  ]
)

join = Post.find(19)
join.post_joins.create(
  [
    { user_id: 50 }
  ]
)
