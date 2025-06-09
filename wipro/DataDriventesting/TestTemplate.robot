*** Settings ***
Library  SeleniumLibrary
Resource        ../resources/DDTKeywords.robot
Resource    ../../DataDriventesting/CSV.robot

Suite Setup     Launch App  # run before all the testcases on the suite are run
Suite Teardown      Close App  # run after the test suite is completed

*** Test Cases ***
Correct Email and Incorrect Password    admin@yourstore.com     admin12
    [Template]      Invalid Login
Correct Email and Empty Password    admin@yourstore.com     ${EMPTY}
    [Template]      Invalid Login
InCorrect Email and Correct Password    admn@yourstore.com     admin
    [Template]      Invalid Login
InCorrect Email and InCorrect Password    amin@yourstore.com     admin12
    [Template]      Invalid Login
InCorrect Email and Empty Password    adn@yourstore.com     ${EMPTY}
    [Template]      Invalid Login
Correct Email and Correct Password    admin@yourstore.com     admin
    [Template]      Invalid Login

*** Keywords ***
*** Keywords ***
Invalid Login
    [Arguments]    ${userid}    ${password}
    Set Email    ${userid}
    Set Password    ${password}
    Click Login
    Error Message Should Be Visible

Valid Login
    [Arguments]    ${userid}    ${password}
    Set Email    ${userid}
    Set Password    ${password}
    Click Login
    DashBoard Page Should be Visible








