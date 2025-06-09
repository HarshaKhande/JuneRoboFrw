*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify screenshot
    Open Browser   https://the-internet.herokuapp.com/windows      Chrome
    Wait Until Element Is Visible    xpath://h3[normalize-space()='Opening a new window']      timeout=5
    Click Element    xpath://a[normalize-space()='Click Here']
    Sleep    3s
    Switch Window       title:New Window
    Element Text Should Be    //h3[normalize-space()='New Window']  New Window
    Sleep    3s
    Switch Window       title:The Internet
    Wait Until Element Is Visible    xpath://h3[normalize-space()='Opening a new window']
    Sleep    3s
    Close Browser












