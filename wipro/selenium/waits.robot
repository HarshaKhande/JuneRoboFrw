*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verifywaits

    Open Browser   https://the-internet.herokuapp.com/checkboxes     Chrome
    Wait Until Element Is Visible   //h3[normalize-space()='Key Presses']      timeout=5
    Sleep    5s
    Wait Until Page Contains Element    xpath://h3[normalize-space()='Checkboxes']  timeout=5
    Wait Until Element Is Enabled    xpath:(//input[@type='checkbox'])[1]


  
  
    








