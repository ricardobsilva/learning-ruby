ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

if Rails.env.production?
  abort('The Rails environment is running in production mode!')
end

require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = true
end
