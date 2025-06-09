*** Settings ***
Library  SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://the-internet.herokuapp.com/checkboxes

*** Test Cases ***
RadioButton
        open browser        ${url}    ${browser}
        maximize browser window
        Sleep   4s
        click Element       xpath:(//input[@type='checkbox'])[1]
        Sleep   4s
        click Element       xpath:(//input[@type='checkbox'])[2]
