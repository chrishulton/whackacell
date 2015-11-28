Feature: User views the home page

  @javascript
  Scenario: User views the home page and sees defaults
    When I go to the homepage
    Then I should see "whack a tile"
    And I should see "0.0" 
    And I should see "4.4"
    But I should not see "5.0"

  @javascript
  Scenario: User resizes grid
    When I go to the homepage
    And I drag the grid slider element to the right 3 times
    Then I should see "7.7"
    But I should not see "8.0"
    And I drag the grid slider element to the left 5 times
    Then I should see "2.2"
    But I should not see "3.0"
