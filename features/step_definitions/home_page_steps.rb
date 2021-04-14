home_page = HomePage.new

Given(/^user is on home page$/) do
  visit "https://mw-staging.katespade.com/"
end

When(/^user clicks on "([^"]*)" category$/) do |category_name|
  home_page.click_category category_name
end

And(/^user scrolls page$/) do
  5.times do
    page.execute_script("window.scrollBy(0,document.body.scrollHeight/5);")
  end
  page.execute_script("window.scrollTo(0,0);")
end