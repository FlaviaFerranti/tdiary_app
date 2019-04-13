Feature: I want to visit my profil
    As a registred and logged in user
    By clicking on Profile
    I want to be able to visit my personal page

Scenario: Visit user Profile
    Given I am a registred and logged in user
    When I click on menu Account
    And on profile
    Then I am redirect to my profile
