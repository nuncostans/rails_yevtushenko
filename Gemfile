source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
gem 'puma'
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'pry'
gem 'haml'
gem 'coveralls', require: false
gem 'dynamic_form'
gem 'devise'
gem 'devise-bootstrap-views'
gem 'omniauth'
gem 'omniauth-oauth2'
gem 'omniauth-google-oauth2'
gem 'paperclip', '~> 5.0.0'
gem 'aws-sdk', '~> 2.3'
gem 'aws-sdk-rails'
gem 'postmark-rails'
gem 'warden'
gem 'carrierwave'
gem 'cloudinary'
gem 'paperclip-cloudinary'
gem 'rails_admin'
gem 'cancancan', '~> 1.10'
gem 'dotenv-rails', groups: [:development, :test]
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rubocop', require: false
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'factory_girl_rails'
  gem 'simplecov'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# for heroku
group :production do
  gem 'rails_12factor'
end

ruby '2.3.0'
