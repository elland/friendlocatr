Feature: Add friend
  So that I can track which friends are the nearest
  As the sole uer
  I want to be able to add their location coordinates

  Scenario: Add a valid coordinate
    Given that I visit the homepage
    When I enter "Valid Friend"
    Then I should see a 'Successfully added friend' notice
    And "Valid Friend" should be listed

  Scenario: Add an invalid coordinate
    Given that I visit the homepage
    When I enter "Invalid Friend"
    Then I should see a "Error adding friend, invalid coordinates"
    And "Invalid Friend" should not be listed
