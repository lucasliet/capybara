# require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'

require 'selenium-webdriver'
require 'site_prism'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  # selenium (Firefox) selenium_chrome selenium_chrome_headless (NOGPU)
  config.default_driver = :selenium
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 5
end