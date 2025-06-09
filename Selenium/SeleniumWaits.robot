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

Selenium_Waits
    Open Browser       ${url}       ${browser}
    Maximize Browser Window
    ${timeout}=    Get Selenium Timeout    # gives the default timeout --5 seconds
    Log To Console    ${timeout}
    ${expectedtitle}    Set Variable    Demo Web Shop. Register
    Wait For Expected Condition    title is    ${expectedtitle}        timeout=5
    # Wait Until Page Contains    Registration    # default wait is 5seconds --  Text 'Registration' did not appear in 5 seconds.
    # Wait Until Page Contains    Registration    3s    # specify timeout here or do like below
    Select Radio Button    Gender    F
    Wait Until Element Is Visible  name:FirstName    2s
    Input Text    name:FirstName    Admin
    Input Text    name:LastName    Admin
    Input Text    name:Email    ${email}
    Input Text    name:Password    ${password}
    Input Text    name:ConfirmPassword    ${password}
    Wait Until Element Is Enabled    name:register-button    2s
    Click Button    name:register-button