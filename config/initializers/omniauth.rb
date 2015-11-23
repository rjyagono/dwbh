Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '113961971625-usdatd2fea8t3a2lnrmac1fkiebuvjgb.apps.googleusercontent.com', 'vS4Okug8oiyp5OhZiFy0RRL9'
end