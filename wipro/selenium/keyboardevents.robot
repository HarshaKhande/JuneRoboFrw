*** Settings ***
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
Verify keyboard events
    Open Browser   https://the-internet.herokuapp.com/key_presses     Chrome
    Wait Until Element Is Visible   //h3[normalize-space()='Key Presses']      timeout=5
    Sleep    5s
    Press Keys  id:target       SPACE
    Sleep    5s
    Press Keys  id:target       TAB
    Sleep    5s
    Press Keys  id:target       SHIFT
    Sleep    5s











