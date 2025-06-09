*** Settings ***
# import all libraries
Library  SeleniumLibrary

*** Variables ***
# define the variables commonly used in test cases
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
${email}    admin@gmail.com
${password}  admin@12

*** Test Cases ***
# define the test cases

Implicit_Wait
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s    # 10secs is the maximum time it can wait for performing any selenium command before throwing exception, continues script if action can be performed before that
    Select Radio Button    Gender    F
    Input Text    name:FirstName    Admin
    Input Text    name:LastName    Admin
    Input Text    name:Email    ${email}
    Input Text    name:Password    ${password}
    Input Text    name:ConfirmPassword    ${password}    #locator is wrong
    Wait Until Element Is Enabled    name:register-button    2s
    Click Button    name:register-button
    # Close All Browsers