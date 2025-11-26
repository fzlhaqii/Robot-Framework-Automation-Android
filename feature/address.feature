Feature: Mobile Registration

    Background:
        Given user has input valid data on first page and otp in registration form

    Scenario: Successful Address Confirmation
        Given user on address information form
        When user choose valid data on kota/kabupate dropdown
        And user choose valid data on kecamatan dropdown
        And user click lanjutkan button on addres page
        Then user direct to password page