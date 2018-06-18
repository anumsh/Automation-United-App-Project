Feature: Home Screen feature

  @home
  Scenario: checking navigation in Horizontal Scroll View
    Given I land to Home Screen and verify Home tab is displayed
    When I click on "Boarding Passes" in Horizontal Scroll View
    Then I verify card title text is equal "No boarding passes"