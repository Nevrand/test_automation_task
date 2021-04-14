require 'logger'
require 'cucumber'
require 'capybara/cucumber'
require 'date'
require 'ostruct'
require 'selenium-webdriver'
require 'rspec'
require 'rspec-steps'
require 'capybara'
require 'capybara/dsl'
require 'fileutils'
require 'webdrivers/chromedriver'
require 'nokogiri'

Capybara.register_driver :driver do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver   = :driver