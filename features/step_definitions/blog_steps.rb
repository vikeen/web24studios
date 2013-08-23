When /^I am on the blog page$/ do
  visit posts_path
end

When /^I delete a post titled "([^"]*)"$/ do |title|
  step %{I am on the blog page}
  step %{I click "#{@post.title}" link}
  step %{I click "Delete Post" button}
  step %{I confirm popup}
  step %{I should see "#{@post.title} was successfully deleted."}
end

When /^I create a post with the following attributes:$/ do |table|
  table.hashes.each do |attributes|
    @post = Post.new({ title: attributes['title'],
                       content: attributes['content'],
                       user_id: User.find_by_email(attributes['author']).id })

    step %{I am on the blog page}
    step %{I click "Add New Post" button}
    step %{I should see "Add New Post"}
    step %{I fill in "post_title" with "#{@post.title}"}
    step %{I select "#{@user.first_name} #{@user.last_name}" from "post_user_id"}
    step %{I fill in "post_content" with "#{@post.content}"}
    step %{I click "Submit" button}
    step %{I should see "Post was successfully created!"}
  end
end

When /^I edit the post with the following attributes:$/ do |table|
  table.hashes.each do |attributes|
    step %{I am on the blog page}
    step %{I click "#{@post.title}" link}
    step %{I click "Edit Post" button}
    step %{I fill in "post_title" with "#{attributes['title']}"}
    step %{I fill in "post_content" with "#{attributes['content']}"}
    step %{I click "Submit" button}
    step %{I should see "Post was successfully updated!"}
    @post = Post.new({ title: attributes['title'],
                       content: attributes['content'],
                       user_id: User.find_by_email(attributes['author']).id })
  end
end

Then /^I should have a new post$/ do
  step %{I am on the blog page}
  step %{I should see "#{@post.title}"}
  step %{I should see "#{@post.content}"}
  step %{a post titled "#{@post.title}" exists}
end

Then /^a post titled "([^"]*)" exists$/ do |title|
  Post.find_by_title(title)
end

Then /^a post titled "([^"]*)" should not exist$/ do |title|
  !Post.find_by_title(title)
end
