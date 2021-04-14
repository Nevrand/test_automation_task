require 'capybara/cucumber'
require 'json'

class ProductPage
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @locators = JSON.parse(File.read('./locators.json'))['product_page']
  end

  def check_element(element_name)
    expect(page).to have_xpath(@locators[element_name])
  end
end