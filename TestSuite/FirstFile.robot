*** Settings ***
Library  SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
Logintest
        open browser        ${url}      ${browser}
        loginToApplication
        close browser


*** Keywords ***
loginToApplication
        maximize browser window
        Sleep   4s
        input text  xpath://input[@name = 'username']   Admin
        input text  xpath://input[@name = 'password']   admin123
        Sleep   2s
        click Element   xpath://button[@type='submit']
        Sleep   2s