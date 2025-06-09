*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify screenshot
    Open Browser   https://the-internet.herokuapp.com      Chrome
    Wait Until Element Is Visible    xpath://h1[normalize-space()='Welcome to the-internet']        timeout=5
    Capture Page Screenshot     C:/Users/Harsha Patil/Documents/Drivers/wipro/data.png
    Capture Element Screenshot    xpath://h2[normalize-space()='Available Examples']         C:/Users/Harsha Patil/Documents/Drivers/wipro/data1.png
    Close Browser












