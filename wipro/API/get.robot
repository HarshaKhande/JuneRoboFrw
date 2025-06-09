*** Settings ***
Library    RequestsLibrary
Library    Collections
Library   JSONLibrary

*** Variables ***
${base_url}         https://demoqa.com
${city}     Delhi


*** Test Cases ***
Get weatherinfo for the city
    Create Session  mysession       ${base_url}
    ${response}= GET on Session        mysession       /utilities/weather/city/${city}     expected_status=any
    Log To Console    Status code:{response.status_code}
    Log To Console    Status code:{response.content}
    Log To Console    Status code:{response.headers}
    Log To Console    Status code:{response.json}



    
