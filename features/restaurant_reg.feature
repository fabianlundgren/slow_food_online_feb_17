Feature: Create account for restaurant
  As a restaurant owner
  In order to display my restaurant in the system
  I would like to be able to create a restaurant account

  Scenario: I create an account
    Given I am on the restaurant registration page
    Then I should see "Restaurant registration"
    When I fill in "Name" with "Leffes pizza"
    And I fill in "Street" with "Skolgatan 33"
    And I fill in "Zip code" with "41133"
    And I fill in "City" with "Gothenburg"
    And I fill in "Food style" with "Pizza"
    And I fill in "Description" with "God kebibpizza med såååås"
    And I click "Submit"
    And I should see "Restaurant successfully created"
