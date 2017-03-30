Feature: Restaurant show page
  As a visitor
  In order to see a restaurants menu and dishes
  I would like to visit the restaurants page

  Background:
   Given the following restaurants exist
    | name        | food_style  | adress       |
    | NisseKebbab | Kebab       | Kebabvägen 1 |

  Scenario:
    Given I am on the index page
    When I click "NisseKebbab"
    Then I should see "Restaurant"
    And I should see "NisseKebbab"
    And I should see "Kebab"
    And I should see "Kebabvägen 1"
