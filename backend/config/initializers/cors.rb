Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV['API_DOMAIN'] || 'http://localhost:3000'
    
    resource '*',
            headers: :any,
            expose: %w[access-token uid client token-type expiry],
            methods: %i[get post put patch delete options head]
  end
end
