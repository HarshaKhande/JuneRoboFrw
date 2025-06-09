*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify actions
    Open Browser   https://the-internet.herokuapp.com/context_menu       Chrome
    Wait Until Element Is Visible    xpath://h3[normalize-space()='Context Menu']      timeout=5
    # right click or a context click
    Open Context Menu       xpath://div[@id='hot-spot']
    Sleep  4s
    ${alertmessage} =       Handle Alert      action=DISMISS   timeout=3
    Log To Console  ${alertmessage}
    Sleep  4s
    # double click
    Double Click Element        xpath://a[normalize-space()='Elemental Selenium']
    Sleep   2s
    Close Browser



    
    








