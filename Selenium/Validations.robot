*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://demo.nopcommerce.com/login


*** Test Cases ***
Logintest
        open browser        ${url}      ${browser}
        loginToApplication
        close browser


*** Keywords ***
loginToApplication
        maximize browser window
        Sleep   4s
        title should be  nopCommerce demo store. Login
        ${"email_txt"}  set variable  id:Email
        ${"passwd_txt"}  set variable    id:Password
        element should be visible   xpath://input[@id='Email']
        input text   ${"email_txt"}       Admin
        element should be visible   xpath://input[@id='Password']
        input text   ${"passwd_txt"}      admin123
        element should be enabled   xpath://button[contains(text(),'Log in')]
        click element  xpath://button[contains(text(),'Log in')]


