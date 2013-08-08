Given /^I am on the posts path$/ do
  visit posts_path
end

Given /^I am an admin user$/ do
  @admin = User.create( first_name: :Cucumber, last_name: :Admin, email: 'cucumber.admin@gmail.com', user_type_id: 1 )
end

When /^I click "([^"]*)" button$/ do |text|
  click_button(text)
end

When /^I add a blog post titled "([^"]*)"$/ do |title|
  Post.create( title: title, content: title << ' Content', user_id: @admin.id )
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, with: value)
end

Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content message
end

Then(/^visit the "([^"]*)" post$/) do |title|
  visit posts_path(Post.find_by_title(title))
end

Then /^a post record titled "([^"]*)" exists$/ do |title|
  Post.find_by_title(title)
end