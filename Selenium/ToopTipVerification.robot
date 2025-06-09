*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***

MouseHover_Tooltip_Validation
    # MouseHover to open and validate Ajax tooltip
    Open Browser    http://www.dhtmlgoodies.com/scripts/ajax-tooltip/ajax-tooltip.html    chrome
    Maximize Browser Window
    Mouse Over   //td[text()='JS Calendar']/ancestor::tr//a[text()='Info']
    Sleep    3s
    Element Should Contain    id:ajax_tooltip_content    JS Calendar    ignore_case=True    # Verifies that element locator contains text expected. To get locator of anything inside tooltip content, pause the debugger using setTimeout(()->{debugger;},5000)
    Click Link    Close
