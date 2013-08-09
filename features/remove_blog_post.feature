Feature: admin user removes a blog post

  As an admin user
  I want to remove a blog post
  So that visitors cannot read it

  @javascript
  Scenario: remove blog post
		Given I am an admin user
    And I have a post titled "Cucumber Post"
    And I am on the blog page
		When I click "Cucumber Post" link
		And I click "Delete Post" button
    And I confirm popup
		Then I should see "Cucumber Post was successfully deleted."
    And I should not see "Cucumber Post"
		And I should not see "Cucumber Post Content"
		And a post titled "Cucumber Post" does not exist
