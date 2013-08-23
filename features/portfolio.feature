Feature: manage the portfolio

  In order earn client trust and business
  As an admin user
  I want to be show case my work through a portfolio

  Background:
    Given I am signed in as a user with the following attributes:
      | email                    | first_name | last_name | password | admin |
      | cucumber.admin@gmail.com | cucumber   | admin     | admin    | 1     |
    And I create a portfolio project with the following attributes:
      | www             | title           | client       | summary                   | published | showcase |
      | www.flowers.com | Flowers for All | Flowers Inc. | Our flowers are the best! | Y         | Y        |

  Scenario: a portfolio project exists
		Then I should have a new portfolio project

  Scenario: edit a portfolio project
    When I edit the portfolio project with the following attributes:
      | www           | title         | client     | summary                 | published | showcase |
      | www.shoes.com | Shoes for All | Shoes Inc. | Our shoes are the best! | Y         | Y        |
    Then I should have a new portfolio project

  Scenario: unpublish a portfolio project
    When I unpublish a portfolio project titled "Flowers for All"
    Then a public user cannot view this portfolio project

  #@javascript
  #Scenario: remove a portfolio project
  #  When I delete a portfolio project titled "Shoes for All"
  #  Then a post titled "Shoes for All" should not exist
