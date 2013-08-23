Feature: user management

  In order to provide secure data and a positive experience
  As a developer
  I need to ensure user management operations work

  Scenario: log in and out
    Given I am signed in as a user with the following attributes:
      | email                    | first_name | last_name | password | admin |
      | cucumber.admin@gmail.com | cucumber   | admin     | admin    | 1     |
    Then I log out
