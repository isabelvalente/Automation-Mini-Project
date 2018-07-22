Feature: ASOS Shop

  @tag2
  Scenario: A user wants to save one item
    Given I access the ASOS womens page
    And I click on clothing
    And I select an item
    When I click the heart
    Then I should be able to see my saved item in the saved items page
