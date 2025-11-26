*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary
Library    random
Library    String


*** Keywords ***

Random for email
    ${randomNumber}    Generate Random String    3    [NUMBERS]
    Set Global Variable    ${field_picEmail}    smith${randomNumber}@yopmail.com

User membuka aplikasi GherkinPilot Native
    Open Application    127.0.0.1:4723
    ...    platformName=Android
    ...    platfromVersion=7.0
    ...    deviceName=64d4eb4f
    ...    app=D:/Download/gherkin_piloting_nativeAndro_update.apk
    ...    automationName=UiAutomator2
    ...    newCommandTimeout=9999

Open yopmail via web browser for get OTP
    Open Browser    https://www.yopmail.com    chrome
    Set Selenium Timeout    10s
    SeleniumLibrary.Wait Until Element Is Visible    //img[@id="logoacc"]
    SeleniumLibrary.Input Text    //input[@id="login"]    ${field_picEmail} 
    SeleniumLibrary.Click Button    //div[@id="refreshbut"]/button
    Sleep    10s
    Select Frame    //iframe[@id="ifmail"]
    ${OTP}=    SeleniumLibrary.Get Text    //p[contains(text(),"OTP to confirm")]/following-sibling::div
    Set Global Variable    ${OTP}
    Log    ${OTP}
    Close Browser


# Get OTP From Mailnator
#     Wait Until Element Is Visible    //android.view.View[@text="YOPmail - Mail viewer"]/android.view.View[2]/android.view.View/android.view.View/*[4]    20s
#     ${otp}=    Get Text    //android.view.View[@text="YOPmail - Mail viewer"]/android.view.View[2]/android.view.View/android.view.View/*[4]
#     Log To Console    ${otp}
#     Set Global Variable    ${otp}