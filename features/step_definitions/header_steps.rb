header = Header.new

When(/^user clicks on "([^"]*)" on header$/) do |element|
  header.click element
end

And(/^user inputs "([^"]*)" in "([^"]*)" on header$/) do |value, element|
  header.set_element(element, value)
end

Then(/^user can see "([^"]*)" with value "([^"]*)" on header$/) do |element, value|
  header.check_element_value(element, value)
end