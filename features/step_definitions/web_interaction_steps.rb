When /^I confirm popup$/ do
  page.driver.browser.switch_to.alert.accept
end

When /^I dismiss popup$/ do
  page.driver.browser.switch_to.alert.dismiss
end

When /^I click "([^"]*)" button$/ do |text|
  click_button(text)
end

When /^I click "([^"]*)" link$/ do |text|
  click_link(text)
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, with: value)
end

When /^I select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, from: field)
end
