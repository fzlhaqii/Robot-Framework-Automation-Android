Feature: Mobile Registration

    Background:
        Given user Successfull create password

    Scenario: Confirmation Registration Process    
        Given user see popup message "Apakah anda yakin telah mengisi data dengan benar"                               
        When user click button "Ya"                         
        Then user should see message on Confirmation Form "Pendaftaran Berhasil, Terimakasih sudah melakukan registrasi akun"
