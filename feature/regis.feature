Feature: Mobile Registration

    Scenario: Valid Register Account
        Given user berada di form register
        When user input nama lengkap/badan usaha field
        And user input email field
        And user choose role
        And user input checklist on syarat dan ketentuan checkbox
        And user click lanjutkan button
        Then user Direct to OTP page