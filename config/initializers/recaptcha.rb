Recaptcha.configure do |config|
  config.site_key  = ENV["RECAPTCHA_API_PUBLIC_KEY"]
  config.secret_key = ENV["RECAPTCHA_API_PRIVATE_KEY"]
end
