*** Settings ***
Documentation  Handling Dropdown, Checkbox, and Radio Buttons in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Validate user can select items from the dropdown
    [documentation]  This test case verifies that the user can select values from the dropdown and verify it
    [tags]  Smoke
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${chrome options}
    Go To     https://the-internet.herokuapp.com/dropdown
    Wait Until Element Is Visible  id:dropdown  timeout=8
    Select From List By Index  id:dropdown  1
    List Selection Should Be  id:dropdown  Option 1
    Sleep  2s
    Select From List By Value  id:dropdown  2
    Sleep  2s
    List Selection Should Be  id:dropdown  Option 1
    Sleep  2s
    Close Browser
