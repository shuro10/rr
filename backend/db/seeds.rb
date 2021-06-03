User.create!(
  name: ENV['RAILS_ADMIN_USER'],
  email: ENV['RAILS_ADMIN_ADDRESS'],
  password: ENV['RAILS_ADMIN_KEY'],
  password_confirmation: ENV['RAILS_ADMIN_KEY'],
  admin: true
)
