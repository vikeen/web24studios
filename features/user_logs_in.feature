Feature: an user logs in

  As an user
  I want to be able to log in
  So that I can complete my jobs

  Scenario: user logs in
    Given I am on the home page
    And I am an admin user
		When I click "Admin" link
		And I should see "Log In"
		And I fill in "user_email" with "cucumber.admin@gmail.com"
		And I fill in "user_password" with "admin"
		And I click "Submit" button
		Then I should see "Successfully Logged In"
		And I should see "cucumber.admin@gmail.com - Log Out"
