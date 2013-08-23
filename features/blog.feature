Feature: manage the blog

  In order to provide dynamic content
  As an admin user
  I want to be manage the blog dashboard

  Background:
    Given I am signed in as a user with the following attributes:
      | email                    | first_name | last_name | password | admin |
      | cucumber.admin@gmail.com | cucumber   | admin     | admin    | 1     |
    And I create a post with the following attributes:
      | title    | content    | author                   |
      | My Title | My Content | cucumber.admin@gmail.com |

  Scenario: add blog post
		Then I should have a new post

  Scenario: edit blog post
    When I edit the post with the following attributes:
      | title    | content        | author                   |
      | My Title | My New Content | cucumber.admin@gmail.com |
    Then I should have a new post

  @javascript
  Scenario: remove blog post
    When I delete a post titled "My Title"
    Then a post titled "My Title" should not exist
