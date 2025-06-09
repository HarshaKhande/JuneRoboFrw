*** Settings ***
Library    RequestsLibrary
Library    Collections        # to work with dictionaries--which are Collections
Library    JSONLibrary

*** Variables ***
${base_url}    https://demoqa.com
${city}    Delhi

*** Test Cases ***
Delete WeatherInfo for City
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /utilities/weather/city/${city}    expected_status=any
    Log To Console    Status code: ${response.status_code}    # Status code: 200 --type integer
    Log To Console    response body: ${response.content}    # response body (type dictionary): {"City":"Delhi","Temperature":"186 Degree celsius","Humidity":"81 Percent","Weather Description":"scattered clouds","Wind Speed":"123 Km per hour","Wind Direction degree":"89 Degree"}
    Log To Console    headers: ${response.headers}    # headers (type dictionary): {'Server': 'nginx/1.17.10 (Ubuntu)', 'Date': 'Mon, 06 May 2024 16:17:55 GMT', 'Content-Type': 'application/json; charset=utf-8', 'Content-Length': '183', 'Connection': 'keep-alive', 'X-Powered-By': 'Express', 'ETag': 'W/"b7-jD+yJ5EQXnGGY93GOB3WxqIH090"'}
Validate Status Code
    Create Session    mysession    ${base_url}
    ${response}=    Delete  On Session    mysession    /utilities/weather/city/${city}
    # Validations
    # ${status}=    Convert To String    ${response.status_code}
    Should Be Equal As Integers    ${response.status_code}    200
