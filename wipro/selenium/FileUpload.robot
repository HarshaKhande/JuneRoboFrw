*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${browser}      chrome
${url}      https://chercher.tech/practice/practice-pop-ups-selenium-webdriver

*** Test Cases ***
Fileupload
        open browser        ${url}      ${browser}
        maximize browser window
        Sleep   4s
        Click Element   xpath://input[@name='upload']
        Sleep   4s
        # file upload
        Wait Until Element Is Visible    xpath://input[@name='upload']      timeout=5
        Choose File    xpath://input[@name='upload']        C:/Users/Harsha Patil/Desktop/QATraining/goals.jpg
        Sleep   4s
















