require 'capybara/cucumber'
require 'json'

class ProductsPage
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @locators = JSON.parse(File.read('./locators.json'))['products_page']
  end

  def click_item(item_number)
    find(:xpath, "(#{@locators['item_name']})[#{item_number}]").click
  end

  def check(element)
    if element == "items_list"
      expect(page).to have_xpath(@locators['item_image'], minimum: 2)
      expect(page).to have_xpath(@locators['item_price'], minimum: 2)
      expect(page).to have_xpath(@locators['item_name'], minimum: 2)
    end
  end

  def check_element_value(element, value)
    expect(find(:xpath, @locators[element]).value).to eq(value)
  end
end