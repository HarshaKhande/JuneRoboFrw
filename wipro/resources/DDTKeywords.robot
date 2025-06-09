*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}       https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F


*** Keywords ***
Launch App
    Open Browser        ${url}     ${browser}
    Maximize Browser Window

Close App
    Close All Browsers

Open Login Page
    Go To     ${url} 
    
Set Email1
    [Arguments]     ${username}
    Input Text    id:Email    ${username}

Set Password
    [Arguments]     ${password}
    Input Text    id:Password    ${password}

Click Login
    Click Button    xpath://button[normalize-space()='Log in']
    
Error Message Should Be Visible     # invalid login
    Page Should Contain    Login was unsuccessful

DashBoard Page Should be Visible
    Page Should Contain    Dashboard

    
    
    