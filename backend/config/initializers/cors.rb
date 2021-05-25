Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # production 環境で通らず
    # origins 'http://meetwithkids.org' || ENV['API_DOMAIN'] || 'http://localhost:3000' || ''

    # development 環境で通る
    origins ENV['API_DOMAIN'] || 'http://localhost:3000' || ''
    # origins 'http://meetwithkids.org' || ''
    # origins ENV['API_DOMAIN'] || ''

    resource '*',
             headers: :any,
             expose: %w[access-token uid client token-type expiry],
             methods: %i[get post put patch delete options head]
  end
end
