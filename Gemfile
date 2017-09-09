# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Rails
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'

# Database
gem 'sqlite3'
# gem 'bcrypt', '~> 3.1.7'

# Async
# gem 'redis', '~> 3.0'

# Deploy
# gem 'capistrano-rails', group: :development

# API
# gem 'jbuilder', '~> 2.5'
# gem 'rack-cors'

# Linter
gem 'overcommit'
gem 'rubocop', '0.48', require: false

# Authentication
gem 'devise_token_auth'

group :development, :test do
  # Debug
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'pry-rails'

  # Tests
  gem 'rspec-rails', '~> 3.6'
end

group :test do
  gem 'simplecov', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Cache
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i(mingw mswin x64_mingw jruby)
