*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify error message validation
    Open Browser   https://www.facebook.com/login/     Chrome
    Wait Until Element Is Visible   //img[@alt='Facebook']      timeout=5
    Sleep    5s
    Click Element    xpath://button[@id='loginbutton']
    Sleep    3s
    Element Text Should Be    //div[@class='_9ay7']     The email address or mobile number you entered isn't connected to an account. Find your account and log in.
    Sleep    3s
    Close Browser












