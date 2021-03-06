source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'

#jquery
gem 'jquery-rails', '~> 4.3.1'
gem 'jquery-ui-rails',  '~> 5.0.0'
#bootstrap per i css
gem "bootstrap-sass", ">= 3.4.1"
#ci assicuriamo che un hacker non riesca ad effettuare il login al sito
gem 'bcrypt', '~> 3.1.7'
#creazione utenti finti
gem 'faker', '~>1.4.2'
#creare la paginazione per la lista di utenti
gem 'will_paginate', '~>3.0.7'
gem 'bootstrap-will_paginate', '~>0.0.10'
#creazione gem per la localizzazione dei travel
gem 'geocoder'
gem 'google_maps_service'
#search bar
gem 'ransack', github: 'activerecord-hackery/ransack'
#OAuth
gem 'omniauth-google-oauth2'
#votable
gem 'acts_as_votable', '~> 0.12.0'
#use devise
gem 'devise'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'sendgrid-ruby'

# Use ActiveStorage variant
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave'
gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'rack_session_access'
  gem 'database_cleaner'  # to clean Cucumber's test database between runs
  gem 'launchy' # debbuging aim for user stories
  gem 'factory_bot_rails'
  gem 'cucumber-rails', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'minitest-reporters', '~>1.0.5'
  gem 'mini_backtrace', '~> 0.1.3'
  gem 'guard-minitest', '~> 2.3.1'
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'rails_12factor', '~>0.0.2'
  gem 'unicorn', '~>4.8.3'
end
