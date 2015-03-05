# A sample Gemfile
source "https://rubygems.org"

# gem "rails"
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'sinatra'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'rake'
gem 'require_all'
gem 'sinatra-twitter-bootstrap', :require => 'sinatra/twitter-bootstrap'
gem 'nokogiri'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
  gem 'selenium-webdriver'
end

group :development do
 gem 'sqlite3'
 gem "tux"
end

group :production do
 gem 'pg'
end