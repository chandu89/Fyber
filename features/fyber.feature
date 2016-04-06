Feature: Contact me
    In order to get data from fyber
    A user
    Should send params
    
    Scenario: Read Default data from fyber API
        Given I am on the home page
        And I fill in "param_uid" with "Player1"
        And I fill in "param_pub" with "campaign2"
        And I fill in "param_page" with "1"
        When I press "add params"
        Then I should see "Listing"

    Scenario: Read data from fyber API with page 4
        Given I am on the home page
        And I fill in "param_uid" with "Player1"
        And I fill in "param_pub" with "campaign2"
        And I fill in "param_page" with "4"
        When I press "add params"
        Then I should see "No offers available"
