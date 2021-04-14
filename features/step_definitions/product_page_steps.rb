product_page = ProductPage.new

And(/^user sees "([^"]*)" on product page$/) do |element_name|
  product_page.check_element element_name
end