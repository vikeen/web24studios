Feature: admin user edits a blog post

  As an admin user
  I want to edit a blog post
  So that visitors read the update

  Scenario: edit blog post
		Given I am an admin user
    And I have a post titled "Cucumber Post"
    And I am on the blog page
		When I click "Cucumber Post" link
		And I click "Edit Post" button
    And I fill in "post_title" with "New Cucumber Post"
    And I fill in "post_content" with "New Cucumber Post Content"
    And I click "Submit" button
    Then I should see "New Cucumber Post"
		And I should see "New Cucumber Post Content"
    And I should see "Post was successfully updated!"
		And a post titled "New Cucumber Post" exists
		And a post titled "Cucumber Post" does not exist
