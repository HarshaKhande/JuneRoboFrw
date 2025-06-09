*** Settings ***
Library  SeleniumLibrary
Resource    ../resources/DDTKeywords.robot
Library     DataDriver      ./testdata/ddtLogindata.xlsx        sheet_name=Logindata
Library    Telnet

Suite Setup    Launch App    # run before this test Suite (before all test cases)
Suite Teardown    Close App    # run after this test Suite (after running all test cases)
Test Template    Invalid Login    # define template at Suite level to be applicable to all tests in this Suite

*** Test Cases ***
# create a single testcases to run multple sets of test data from excel
Login with user ${username} and password ${password}
    default     UserData


 *** Keywords ***
Invalid Login
    [Arguments]    ${userid}    ${password}
    Set Email    ${userid}
    Set Password    ${password}
    Click Login
    Error Message Should Be Visible

