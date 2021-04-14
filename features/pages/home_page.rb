require 'capybara/cucumber'
require 'json'

class HomePage
  include Capybara::DSL

  def initialize
    @locators = JSON.parse(File.read('./locators.json'))['home_page']
  end

  def click_category(category_name)
    find(:xpath, "#{@locators['category']}/self::*[text()='#{category_name}']").click
  end
end