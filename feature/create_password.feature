Feature: Mobile Registration

    Background:
        Given user success input valid address form

    Scenario: Successfull Create Password
        Given user on the create password form
        When user input valid password field
        And user input password confirmation field
        And user click lanjutkan on create password page
        Then user should see confirmation message