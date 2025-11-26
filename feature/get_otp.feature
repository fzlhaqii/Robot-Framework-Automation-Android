Feature: Mobile Registration

    Background: 
        Given user has input valid data on first page registration form
        And user click Lanjutkan button to direct OTP form

    Scenario: Successful Activation OTP from Email
        Given user on the otp form
        When user input otp number
        Then user direct to address information form