Feature: User views the home page

  @javascript
  Scenario: User views the home page
    When I go to the homepage
    Then I should see "The Home View is working"
