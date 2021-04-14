products_page = ProductsPage.new

And(/^user clicks on (\d+) item$/) do |item_number|
  products_page.click_item item_number
end

And(/^user sees "([^"]*)" on products page$/) do |element|
  sleep 10
  products_page.check element
end

Then(/^user can see "([^"]*)" with value "([^"]*)" on products page$/) do |element, value|
  products_page.check_element_value(element, value)
end