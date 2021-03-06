require_relative 'boot'

require 'rails/all'

# config.time_zone = 'Tokyo' #Time.zone.nowとかの時に日本時間を使用する
# config.active_record.default_timezone = :local #DBの読み書きを日本時間でやる

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.i18n.default_locale = :ja #日本語化
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.yml").to_s] #日本語化
    config.time_zone = 'Asia/Tokyo' #日本語化
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # config.active_storage.routes_prefix = 'https://blogonandoff.s3-ap-northeast-1.amazonaws.com/'
  end
end
