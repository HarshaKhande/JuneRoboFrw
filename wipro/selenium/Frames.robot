*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify Frames
    Open Browser   https://jqueryui.com/checkboxradio/  Chrome
    Select Frame    xpath://body/div[@id='container']/div[@id='content-wrapper']/div[1]/div[1]/iframe[1]
    Sleep    4s
    Click Element    xpath://label[normalize-space()='New York']









