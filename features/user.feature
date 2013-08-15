Feature: user management

  In order to provide secure data and a positive experience
  As a developer
  I need to ensure user management operations work

  Scenario: user logs in
    Given I am on the home page
    And I am an admin user
		When I click "Admin" link
		And I should see "Log In"
		And I fill in "email" with "cucumber.admin@gmail.com"
		And I fill in "password" with "admin"
		And I click "Submit" button
		Then I should see "Successfully Logged In"
		And I should see "cucumber.admin@gmail.com - Log Out"
