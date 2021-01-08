require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
  # selenium (Firefox) selenium_chrome selenium_chrome_headless (NOGPU)
  config.default_driver = :selenium
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 5
end