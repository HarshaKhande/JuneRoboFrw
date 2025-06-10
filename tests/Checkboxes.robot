*** Settings ***
Documentation  Handling Radio Buttons in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Validate user can check and uncheck checkboxes
    [documentation]  This test case verifies that the user can check and uncheck checkboxes and verify it
    [tags]  Smoke
    Open Browser        https://the-internet.herokuapp.com/checkboxes  Chrome
    Wait Until Element Is Visible  id:checkboxes  timeout=5
    Page Should Contain Checkbox  tag:input
    Checkbox Should Not Be Selected  css:input:nth-child(1)  #Checking checkbox 1 is not selected
    Checkbox Should Be Selected  css:input:nth-child(3)  #Checking checkbox 2 is selected
    Select Checkbox  css:input:nth-child(1)  #select checkbox 1
    Checkbox Should Be Selected  css:input:nth-child(1)  #Checking checkbox 1 is selected
    Unselect Checkbox  css:input:nth-child(3)  #unselect checkbox 2
    Checkbox Should Not Be Selected  css:input:nth-child(3)  #Checking checkbox 2 is not selected
    Close Browser

