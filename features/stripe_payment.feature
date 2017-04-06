Feature: As a User
  In order to complete my purchase
  I would like to be able to pay

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |

  @javascript
  Scenario: I check out and pay with my credit card
    Given I am on the restaurant menu page for "Nisses Takeaway"
    And I click "Buy" on "Kebabrulle"
    And I click "Checkout"
    And I should see "Total: 180"
    When I click the "Pay with Card" stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then my order should be marked as true
