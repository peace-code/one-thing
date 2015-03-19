require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OneThing
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    if File.exists? "#{Rails.root.to_s}/config/credentials/kakao_credential.yml"
      config.kakao = YAML.load_file("#{Rails.root.to_s}/config/credentials/kakao_credential.yml")[Rails.env]
    else
      config.kakao = { "client_id" => ENV['KK_API_ID'], "admin_id" => ENV['KK_API_ADMIN_ID'] }
    end

    if File.exists? "#{Rails.root.to_s}/config/credentials/facebook_credential.yml"
      config.facebook = YAML.load_file("#{Rails.root.to_s}/config/credentials/facebook_credential.yml")[Rails.env]
    else
      config.facebook = { "client_id" => ENV['FB_API_ID'], "client_secret" => ENV['FB_API_SECRET'] }
    end

    if File.exists? "#{Rails.root.to_s}/config/credentials/twitter_credential.yml"
      config.twitter = YAML.load_file("#{Rails.root.to_s}/config/credentials/twitter_credential.yml")[Rails.env]
    else
      config.twitter = { "client_id" => ENV['TW_API_ID'], "client_secret" => ENV['TW_API_SECRET'] }
    end    
  end
end
