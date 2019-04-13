Feature: I want to visit my WishList
    As a signed in user
    I want to go to my profile
    And accede to the wish list

Scenario: Visit Wish List
    Given I am a signed in user
    When I go to my profile
    And I click my wish List
    Then I will see the travel I liked
