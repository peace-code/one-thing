source 'https://rubygems.org'
ruby '2.2.0'
gem 'rails', '4.2.0'

# Database
gem 'mongoid', '~> 4.0', '>= 4.0.2'
gem 'sqlite3', group: :development
gem 'pg', group: :deployment

# Upload
gem 'rmagick'
gem 'carrierwave'
gem 'carrierwave-mongoid', require: 'carrierwave/mongoid'
gem 'google_drive', '~> 1.0.0'
gem 'carrierwave-google_drive', '~> 0.0.2'
gem 'fog'

# Authentication
gem 'devise', '~> 3.4.1'
gem 'omniauth-kakao', '~> 0.1.2'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Social networks
gem 'koala'
gem 'twitter'

# view
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'bootstrap-sass', '~> 3.3.3'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'haml-rails', '~> 0.8'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'rails-i18n'

# Edit
gem 'redactor-rails'
gem 'mini_magick'

# Heroku
gem 'rails_12factor', group: :production

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
#  gem 'spring'
end

group :production do
  gem 'puma'
end
