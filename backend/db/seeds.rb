User.create!(name:  ENV['RAILS_ADMIN_USER'],
    email: ENV['RAILS_ADMIN_ADDRESS'],
    password: ENV['RAILS_ADMIN_KEY'],
    password_confirmation: ENV['RAILS_ADMIN_KEY'],
    admin: true)

19.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@tester.org"
password = "password"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)
end

# User.all.each do |user|
#     user.posts.create!(
#       name: 'nameテスト',
#       content: 'contentテキストテキストテキストテキスト'
#     )
#   end