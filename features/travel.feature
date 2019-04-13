Feature: I want to create a travel
    As an authenticated user
    I want to be able to create a travel

Scenario: Create Travel
    Given I am a logged in user
    When I fill the form with valid information
    And I click on Create
    Then I have created a new travel

