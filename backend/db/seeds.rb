User.create!(
  name: ENV['RAILS_ADMIN_USER'],
  email: ENV['RAILS_ADMIN_ADDRESS'],
  password: ENV['RAILS_ADMIN_KEY'],
  password_confirmation: ENV['RAILS_ADMIN_KEY'],
  admin: true
)

# User.all.each do |user|
#     user.posts.create!(
#       name: 'nameテスト',
#       content: 'contentテキストテキストテキストテキスト'
#     )
#   end

Post.create(
  user_id: 1,
  name: 'Test',
  quickword: 'quick',
  catchcopy: 'Test',
  member: 5,
  place: 'Test',
  category: '',
  price: '1000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/1.jpg').open
)

User.create!(
  name: ENV['RAILS_GUEST_USER'],
  email: ENV['RAILS_GUEST_ADDRESS'],
  password: ENV['RAILS_GUEST_KEY'],
  password_confirmation: ENV['RAILS_GUEST_KEY'],
  admin: false,
  image: Rails.root.join('app/assets/images/2_begin/user.jpg').open
)

Post.create(
  user_id: 2,
  name: 'ようこそ！',
  quickword: '早速、右下のボタンで募集ページをつくりましょう！',
  catchcopy: 'Test',
  member: 3,
  place: '集合場所',
  category: '',
  price: '1000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/2_begin/image.jpg').open
)

User.create!(
  name: 'Alith',
  email: 'test@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/3_harvest/user.jpg').open
)

Post.create(
  user_id: 3,
  name: 'Harvest festival',
  quickword: 'What\'s up!',
  catchcopy: 'Do you want to go?',
  member: 5,
  place: 'Test',
  category: '',
  price: '1000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/3_harvest/image.jpg').open
)

User.create!(
  name: 'John',
  email: 'test4@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/4_john/user.jpg').open
)

Post.create(
  user_id: 4,
  name: 'Please, say Ho!',
  quickword: 'What\'s up!',
  catchcopy: 'Do you want to go?',
  member: 5,
  place: 'Test',
  category: '',
  price: '1000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/4_john/image.jpg').open
)

User.create!(
  name: 'りな',
  email: 'test-5@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/5_summerfestival/user.jpg').open
)

Post.create(
  user_id: 5,
  name: '行こうよ！夏祭り！',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 5,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/5_summerfestival/image.jpg').open
)

User.create!(
  name: 'さやか',
  email: 'test-6@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/6_mama/user.jpg').open
)

Post.create(
  user_id: 6,
  name: '心配事',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 5,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/6_mama/image.jpg').open
)

User.create!(
  name: 'てる',
  email: 'test-7@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false
  # image: Rails.root.join('app/assets/images/9_animal/user.jpg').open
)

Post.create(
  user_id: 7,
  name: '動物が生まれました。',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10'
  # image: Rails.root.join('app/assets/images/9_animal/image.jpg').open
)

User.create!(
  name: '銀次',
  email: 'test-8@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/8_grand/user.jpg').open
)

Post.create(
  user_id: 8,
  name: '料理教室',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/8_grand/image.jpg').open
)

User.create!(
  name: 'てる',
  email: 'test-9@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/9_born/user.jpg').open
)

Post.create(
  user_id: 9,
  name: '動物が生まれました。',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/9_born/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-10@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/10_cook/user.jpg').open
)

Post.create(
  user_id: 10,
  name: '料理教室',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/10_cook/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-11@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/11_football/user.jpg').open
)

Post.create(
  user_id: 11,
  name: '料理教室',
  quickword: '楽しもう11！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/11_football/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-12@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/12_baseball/user.jpg').open
)

Post.create(
  user_id: 12,
  name: '野球',
  quickword: '楽しもう12！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/12_baseball/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-13@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/13_bicycle/user.jpg').open
)

Post.create(
  user_id: 13,
  name: '自転車遊ぼ',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: 'お台場',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/13_bicycle/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-14@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/14_study/user.jpg').open
)

Post.create(
  user_id: 14,
  name: '小学校受験する子いますか？',
  quickword: 'どうやって勉強を進めていますか？',
  catchcopy: '相談相手が欲しいです',
  member: 8,
  place: 'Zoom',
  category: '',
  price: '0',
  start_time: '2000-01-01T18:00:00.000Z',
  finish_time: '2000-01-01T19:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/14_study/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-15@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/15_festival/user.jpg').open
)

Post.create(
  user_id: 15,
  name: '今年も行きます！',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/15_festival/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-16@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/16_753/user.jpg').open
)

Post.create(
  user_id: 16,
  name: '5歳になりました',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/16_753/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-17@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/17_river/user.jpg').open
)

Post.create(
  user_id: 17,
  name: '5歳になりました',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/17_river/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-18@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/18_takeyou/user.jpg').open
)

Post.create(
  user_id: 18,
  name: 'お迎え承ります',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/18_takeyou/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-19@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/19_mamaparty/user.jpg').open
)

Post.create(
  user_id: 19,
  name: 'ママ会',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/19_mamaparty/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-20@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/20_confused/user.jpg').open
)

Post.create(
  user_id: 20,
  name: 'Help me...',
  quickword: 'corona virus , stay home,, but I couldn\'t concentrate',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/20_confused/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-21@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/21_read/user.jpg').open
)

Post.create(
  user_id: 21,
  name: 'Help me...',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/21_read/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-22@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/22_programing/user.jpg').open
)

Post.create(
  user_id: 22,
  name: 'Help me...',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/22_programing/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-23@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/23_whatup/user.jpg').open
)

Post.create(
  user_id: 23,
  name: 'Help me...',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/23_whatup/image.jpg').open
)

User.create!(
  name: 'しぃ',
  email: 'test-24@gmail.com',
  password: 'password',
  password_confirmation: 'password',
  admin: false,
  image: Rails.root.join('app/assets/images/24_guitar/user.jpg').open
)

Post.create(
  user_id: 24,
  name: 'Help me...',
  quickword: '楽しもう！',
  catchcopy: 'コロナ',
  member: 8,
  place: '代々木公園',
  category: '',
  price: '3000',
  start_time: '2000-01-01T09:00:00.000Z',
  finish_time: '2000-01-01T03:00:00.000Z',
  release: '2021-5-10',
  image: Rails.root.join('app/assets/images/24_guitar/image.jpg').open
)
