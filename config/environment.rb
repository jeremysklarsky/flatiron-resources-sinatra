require 'bundler/setup'
Bundler.require(:default)
require 'open-uri'

ENV['SINATRA_ENV'] ||= "development"

configure :development do
  set :database, "sqlite3:db/student_resources_#{ENV['SINATRA_ENV']}.sqlite"
  set :show_exceptions, true
end

configure :production do
  set :environment, :production
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/flatiron-resources')
end

Dir[File.join(File.dirname(__FILE__), "./app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "./app/controllers", "*.rb")].each {|f| require f}

require_all 'app'
require_all 'lib'


