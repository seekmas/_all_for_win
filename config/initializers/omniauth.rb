Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :wechat, 'wx8a130f56606d0167', 'f52b96ef6471c0698ca53c7a2d16ddd1'
end