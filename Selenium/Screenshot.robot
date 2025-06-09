*** Settings ***
# import all libraries
Library  SeleniumLibrary
Library    OperatingSystem

*** Variables ***
# define the variables commonly used in test cases
${browser}      chrome
${url}      https://www.goindigo.in/

*** Test Cases ***

Capture Screenshot
    Open Browser   https://demo.nopcommerce.com/login    ${browser}
    Maximize Browser Window
    # Switch Window    NEW
    Sleep    6s
    # Click Element    id="salePopupCloseBtn"
    Wait Until Element Is Enabled    //button[contains(text(),'Search')]    10s
    Wait Until Element Is Visible    //body/div[6]/div[1]/div[2]/div[1]/a[1]/img[1]   7
    Sleep    3s
    # Capture Element Screenshot(locator: WebElement | None | str, filename: str = selenium-element-screenshot-{index}.png)

    #screenshots folder is not present, but created automatically by script
    Capture Element Screenshot    //body/div[6]/div[1]/div[2]/div[1]/a[1]/img[1]     C:/Users/Harsha Patil/Desktop/Anirudh/indigolabel.png   # Captures a screenshot from the element identified by locator and embeds it into log file.
    File Should Exist    C:/Users/Harsha Patil/Desktop/Anirudh/indigolabel.png

    Capture Page Screenshot    C:/Users/Harsha Patil/Desktop/Anirudh/indigoPage.png