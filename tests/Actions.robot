*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}  firefox
${url}  https://demowebshop.tricentis.com/register

*** Test Cases ***
MouseActions
    Open Browser       https://swisnl.github.io/jQuery-contextMenu/demo.html       ${browser}
    Maximize Browser Window

    #right click
    Open Context Menu    //span[text()='right click me']    # open context menu--right click on element identified by locator
    Sleep    3s

    #double click
    Go To   https://testautomationpractice.blogspot.com/    # Go To- Navigates the current browser window to the provided url.
    Maximize Browser Window
    Double Click Element    //button[text()='Copy Text']
    Sleep    3s

    # drag and drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    # Drags the element identified by locator into the target element.The locator argument is the locator of the dragged element and the target is the locator of the target.
    Drag And Drop    id:box4    id:box104    # src    target
    Sleep    3s
