# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

##################################### CORE #####################################
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'sqlite3'

#################################### DEPLOY ####################################
# gem 'capistrano-rails', group: :development
gem 'overcommit'
gem 'rubocop', '0.52', require: false

###################################### API #####################################
# gem 'rack-cors'

##################################### AUTH #####################################
gem 'devise_token_auth'
# gem 'omniauth-github'
# gem 'omniauth-facebook'
# gem 'omniauth-google-oauth2'

##################################### TEST #####################################
group :test do
  gem 'simplecov', require: false
end

##################################### MISC #####################################
group :development, :test do
  # Debug
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails'

  # Tests
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Cache
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

################################ COMPATIBILITY #################################
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
