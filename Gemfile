source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0.4'
# gem 'rails', '~> 7.0', '>= 7.0.4'
gem 'pg'
# gem 'puma', '~> 3.11'
gem 'puma', '~> 6.0', '>= 6.0.2'
gem 'activerecord', '~> 7.0'
# gem 'sass-rails', '~> 5.0'
gem 'sass-rails', '~> 6.0'
# gem 'uglifier', '>= 1.3.0'
gem 'uglifier', '~> 4.2'
# gem 'coffee-rails', '~> 4.2'
gem 'coffee-rails', '~> 5.0'
# gem 'turbolinks', '~> 5'
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
# gem 'jbuilder', '~> 2.5'
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
# gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'haml', '~> 6.1', '>= 6.1.1'
# gem 'simple_form', '~> 4.1'
gem 'simple_form', '~> 5.1'
gem 'bootstrap-sass', '~> 3.4.1'
# gem 'sassc-rails', '>= 2.1.0'
gem 'sassc-rails', '~> 2.1', '>= 2.1.2'
# gem 'devise', '~> 4.6', '>= 4.6.2'
gem 'devise', '~> 4.8', '>= 4.8.1'
# gem 'paperclip', '~> 6.1'
gem 'jquery-rails'
# gem 'tinymce-rails', '~> 5.0', '>= 5.0.9'
gem 'tinymce-rails', '~> 6.3', '>= 6.3.1'
# gem 'friendly_id', '~> 5.2', '>= 5.2.5'
gem 'friendly_id', '~> 5.5'
gem 'ckeditor'
# gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'kaminari', '~> 1.2', '>= 1.2.2'
gem 'mobile-fu'
# gem 'bundler', '~> 2.0', '>= 2.0.1'
gem 'bundler', '~> 2.4', '>= 2.4.2'
# gem 'aws-sdk'
# gem 'figaro', '~> 1.1', '>= 1.1.1'
gem 'figaro', '~> 1.2'
# gem 'rubocop', '~> 0.74.0'
gem 'rubocop', '~> 1.42'
gem 'sitemap_generator'
# gem 'fog-aws'
# gem 'meta-tags', '~> 2.13'
gem 'meta-tags', '~> 2.18'
gem "recaptcha"
# gem 'acts-as-taggable-on', '~> 6.0'
gem 'acts-as-taggable-on', '~> 9.0'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'image_processing', '~> 1.12', '>= 1.12.2'
# gem 'newrelic_rpm'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.18'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails', '~> 3.9'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'webdrivers', '~> 5.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
