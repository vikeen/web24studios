Given /^I am on the home page$/ do
  visit root_path
end

When /^show me the page$/ do
  save_and_open_page
end
