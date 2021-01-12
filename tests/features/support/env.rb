# require 'capybara/cucumber'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'

require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(PageObjects)

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.configure do |config|
  # selenium (Firefox) selenium_chrome selenium_chrome_headless (NOGPU)
  config.default_driver = :selenium
  config.app_host = CONFIG['app_host']
  config.default_max_wait_time = 5
end