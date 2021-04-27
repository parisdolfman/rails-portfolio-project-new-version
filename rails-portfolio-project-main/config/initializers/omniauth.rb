Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'APP ID','APP SECRET'
end