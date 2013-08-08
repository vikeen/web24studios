Feature: admin user adds a blog post

  As an admin user
  I want to add a new blog post
  So that visitors can read it
  
  Scenario: add blog post
    Given I am on the posts path
		And I am an admin user
		When I click "Add New Post" button
		And I should see "Add New Post"
		And I fill in "post_title" with "Cucumber Post"
		And I fill in "post_content" with "Cucumber Post Content"
		And I click "Publish" button
		Then I should see "Cucumber Post"
		And I should see "Cucumber Post Content"
		And a post record titled "Cucumber Post" exists