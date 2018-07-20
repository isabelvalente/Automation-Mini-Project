require 'capybara/cucumber'
require 'rspec'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10 #Wait time for asynchronous processes to finish
  config.match = :prefer_exact
  config.default_driver = :chrome #ensure the default driver is chrome
end
