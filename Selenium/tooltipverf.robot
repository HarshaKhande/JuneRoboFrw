*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify actions
    Open Browser   https://jqueryui.com/tooltip/        Chrome
    Sleep    3s
    Maximize Browser Window
    Sleep    3s
    Wait Until Element Is Visible    xpath://a[contains(text(),'Tooltips')]        timeout=5
    Select Frame    xpath://iframe[@class='demo-frame']
    Mouse Over    xpath://a[normalize-space()='Tooltips']
    Element Should Contain    xpath://a[normalize-space()='Tooltips']    That's what this widget is
    Sleep       3s
    Click Element    xpath://a[normalize-space()='Tooltips']

    Close Browser












