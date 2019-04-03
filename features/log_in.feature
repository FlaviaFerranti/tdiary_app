Feature: I want to login
    As a registred user
    I want to login
    so that I return to home page as an authenticated user

Scenario: Log in
    Given I am a registred user
    And I am on the home page
    When I click on "Log in"
    Then I am an authenticated user
