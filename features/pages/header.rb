require 'json'
require 'capybara/cucumber'

class Header
  include Capybara::DSL

  def initialize
    @locators = JSON.parse(File.read('./locators.json'))['header']
  end

  def click(element)
    sleep 1
    find(:xpath, @locators[element]).click
  end

  def set_element(element, value)
    find(:xpath, @locators[element]).set value
  end

  def check_element_value(element, value)
    expect(find(:xpath, @locators[element]).value).to eq(value)
  end
end