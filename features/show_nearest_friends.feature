Feature: Show nearest friends
  So that I can see which friends are near
  As the sole user
  I want to see my 3 nearest friends

  Scenario: Only 1 friend
    Given I visit the homepage
    And there is one friend
    When I click "Show nearest friends"
    Then I should see the following table rows
      | Valid Friend | 10 | 10 |

  Scenario: Only 2 friends
    Given I visit the homepage
    And there are 2 friends
    When I click "Show nearest friends"
    Then I should see the following table rows
      | Valid Friend 0 | 10 | 10 |
      | Valid Friend 1 | 10 | 10 |


  Scenario: Only 3 friends
    Given I visit the homepage
    And there are 3 friends
    When I click "Show nearest friends"
    Then I should see the following table rows
      | Valid Friend 0 | 10 | 10 |
      | Valid Friend 1 | 10 | 10 |
      | Valid Friend 2 | 10 | 10 |

  Scenario: Many friends
    Given I visit the homepage
    And there are many friends
    When I click "Show nearest friends"
    Then I should see the following table rows
      | Valid Friend 0 | 10 | 10 |
      | Valid Friend 1 | 10 | 10 |
      | Valid Friend 2 | 10 | 10 |
