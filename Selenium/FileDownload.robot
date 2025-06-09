*** Settings ***
Documentation  File Upload Download in Robot Framework
Library  SeleniumLibrary
Library   OperatingSystem

*** Variables ***

*** Test Cases ***
Verify File Download
    [documentation]  This test case verifies that a user can successfully download a file
    [tags]  Regression
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...  download.default_directory=C:/Users/Harsha Patil/Desktop/Anirudh
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Create Webdriver  Chrome  chrome_options=${chrome options}
    Goto  https://the-internet.herokuapp.com/download
    Click Link  css:[href="download/sunset.jpg"]
    Sleep  5s
    ${files}  List Files In Directory  /Users/alapan/PycharmProjects/Robot-Framework/Resources/Download
    Length Should Be  ${files}  2
    Close Browser

*** Keywords ***