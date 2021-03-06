Feature: Home Screen feature

  @home
  Scenario Outline: checking navigation in Horizontal Scroll View
    Given I land to Home Screen and verify Home tab is displayed
    When I click on "<tab_name>" in Horizontal Scroll View
    Then I verify card title text is equal "<arg>"
    Examples:
      | tab_name        | arg                |
      | Boarding Passes | No boarding passes |
      | Flight Status   | No active flights  |

    @signin
    Scenario: User should not be able to sign in without valid data to login and password fields
      Given I land on the home screen and verify Home tab is displayed
      When I tap on Welcome on United section
      Then I tap Sign in button
      Then error message "Account number and password are required." should be displayed

      @entertainment
      Scenario: user should able to open entertainment screen
        Given I land on the home screen and verify Home tab is displayed
        When I click on Entertainment section
        Then "Personal device entertainment" should be displayed on Entertainment page

      @converter
      Scenario: Using left to right swipe user should be able to use currency converter
        Given I land on the home screen and verify Home tab is displayed
        When I swipe screen to the "right" direction
        And I look for menu item "Currency converter" , swipe to find if it necessary and then tap
        Then I enter "10000" as amount I want to exchange
        Then I click currency to convert from