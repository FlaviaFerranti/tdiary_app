Feature: As a visitor
        I want to be able to sign up

Scenario: Sign up
    Given I want to visit the web app
    And I want to sign up
    Then I should be in the sign up path
    And I want to fill the form with valid information
