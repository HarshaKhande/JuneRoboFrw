*** Settings ***
Library    RequestsLibrary
Library    Collections        # to work with dictionaries--which are Collections
Library    JSONLibrary

*** Variables ***
${base_url}    https://demoqa.com
${user}     Shiva Pratap
${pass}     ShivaPratap@1

*** Test Cases ***
Post register user
    Create Session    registersession    ${base_url}

    # create the reuest body
    ${requestbody}=    Create Dictionary    userName=${user}    password=${pass}    # &{dict} =	Create Dictionary	key=value	foo=bar1
    ${header}=    Create Dictionary      Content-Type=application/json;charset=utf-8    Accept=*/*    #  mandatory header for POST request


    ${response} = Put Request  registersession /Account/v1/User    data= ${requestbody}    headers=${header}

    Log To Console    ${response.status_code}    # 201 for success, 406 - for POST On Session keyword
    Log To Console    ${response.content}    # b'{"userID":"7243399e-5057-46ef-9aef-8389b224f8d4","username":"Shiva Pratap","books":[]}'
    ${json}=    Set Variable    ${response.json()}





