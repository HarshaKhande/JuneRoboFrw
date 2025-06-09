*** Settings ***
Library  SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://the-internet.herokuapp.com/dropdown

*** Test Cases ***
RadioButton
        open browser        ${url}    ${browser}
        maximize browser window
        Sleep   4s
        Wait Until Element Is Visible        id:dropdown     timeout=8
        Sleep   4s
        select from list by index       id:dropdown     2
        Sleep   4s
        select from list by value       id:dropdown     1
        Sleep   4s
        list Selection should be    id:dropdown     2
        op





