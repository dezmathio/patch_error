require 'cucumber/rails'
require 'capybara/poltergeist'

### To run this locally do rails s (with port 3000) -- and then uncomment the two lines and comment the true line
Capybara.configure do |config|
  config.run_server = true
  #config.run_server = false
  #config.app_host = 'http://localhost:3000'
end

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end


Cucumber::Rails::Database.javascript_strategy = :truncation

js_driver = :poltergeist
Capybara.default_driver = js_driver

Capybara.register_driver js_driver do |app|
  options = {
      :js_errors => true,
      :timeout => 120,
      :debug => false,
      :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
      :inspector => true,
  }
  Capybara::Poltergeist::Driver.new(app, options)
end
Capybara.default_driver = js_driver
Capybara.javascript_driver = js_driver
Capybara.default_wait_time = 5
Capybara.default_selector = :css

