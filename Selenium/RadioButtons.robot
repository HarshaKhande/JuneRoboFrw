*** Settings ***
Documentation  Handling Radio Buttons in Robot Framework
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Validate user can select radio buttons
    [documentation]  This test case verifies that the user can select radio buttons and verify it
    [tags]  Smoke
    Open Browser  https://demo.seleniumeasy.com/basic-radiobutton-demo.html  Chrome
    Sleep   3s
    maximize browser window
    Page Should Contain Radio Button  tag:input
    Radio Button Should Not Be Selected  optradio
    Sleep   3s
    Select Radio Button  optradio  Male
    Sleep   3s
    Select Radio Button  optradio  Female
    Close Browser