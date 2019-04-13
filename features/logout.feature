Feature: I want to log out
    As an authenticated logged in user
    I want to be able to log out

Scenario: Log out
    Given I am user who logged in
    When I click on Log out
    Then I want to end the session
