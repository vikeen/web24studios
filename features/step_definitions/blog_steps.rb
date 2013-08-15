Given /^I am on the blog page$/ do
  visit posts_path
end

Given /^I have a post titled "([^"]*)"$/ do |title|
  Post.create( title: title, content: title << ' Content', user_id: @admin.id )
end

When /^visit the blog page$/ do
  visit posts_path
end

Then /^I should be redirected to the "([^"]*)" post$/ do |title|
  visit posts_path(Post.find_by_title(title))
end

Then /^a post titled "([^"]*)" exists$/ do |title|
  Post.find_by_title(title)
end

Then /^a post titled "([^"]*)" does not exist$/ do |title|
  Post.find_by_title(title)
end
