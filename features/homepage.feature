Feature: User views the home page

  @javascript
  Scenario: User views the home page and sees defaults
    When I go to the homepage
    Then I should see "whack a cell"
    And I should see "Score: 0"
    And I should see "Round: 0 of 10"
    And I should see "Start"
    And the cellGrid section should have the class "cellGrid--inactive"
    And I should see the tile in row 1 and column 1
    And I should see the tile in row 5 and column 5
    But I should not see the tile in row 6 and column 1

  @javascript
  Scenario: User resizes grid
    When I go to the homepage
    And I drag the cellOptions slider section to the right 3 times
    Then I should see the tile in row 8 and column 8
    But I should not see the tile in row 9 and column 1
    When I drag the cellOptions slider section to the left 5 times
    And I should see the tile in row 3 and column 3
    But I should not see the tile in row 4 and column 1
