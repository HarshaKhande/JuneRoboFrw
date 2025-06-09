*** Settings ***
Library    RequestsLibrary
Library    Collections        # to work with dictionaries--which are Collections
Library    JSONLibrary

*** Variables ***
${base_url}    https://demoqa.com
${city}    Delhi

*** Test Cases ***
Get WeatherInfo for City
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /utilities/weather/city/${city}    expected_status=any
    Log To Console    Status code: ${response.status_code}    # Status code: 200 --type integer
    Log To Console    response body: ${response.content}    # response body (type dictionary): {"City":"Delhi","Temperature":"186 Degree celsius","Humidity":"81 Percent","Weather Description":"scattered clouds","Wind Speed":"123 Km per hour","Wind Direction degree":"89 Degree"}
    Log To Console    headers: ${response.headers}    # headers (type dictionary): {'Server': 'nginx/1.17.10 (Ubuntu)', 'Date': 'Mon, 06 May 2024 16:17:55 GMT', 'Content-Type': 'application/json; charset=utf-8', 'Content-Length': '183', 'Connection': 'keep-alive', 'X-Powered-By': 'Express', 'ETag': 'W/"b7-jD+yJ5EQXnGGY93GOB3WxqIH090"'}
Validate Status Code
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /utilities/weather/city/${city}
    # Validations
    # ${status}=    Convert To String    ${response.status_code}
    Should Be Equal As Integers    ${response.status_code}    200

Validate Response Body
# response body (type dictionary): {"City":"Delhi","Temperature":"186 Degree celsius","Humidity":"81 Percent","Weather Description":"scattered clouds","Wind Speed":"123 Km per hour","Wind Direction degree":"89 Degree"}
    Create Session    mysession    ${base_url}
    ${response}=    GET On Session    mysession    /utilities/weather/city/${city}

    # check type of ${response.content}
    ${type string}=    Evaluate     type(${response.content}).__name__
    Log To Console     ${type string}    # dict

    # check if a particular text is present in the response content
    ${body}=    Convert To String    ${response.content}
    Should Contain    ${body}    Humidity    # check if Humidity key is present in json body (converted to string)
    Should Contain    ${body}    "City":"${city}"   # check if "City":"Delhi" pair is present in json body (converted to string)

    ${json}  Set Variable    ${response.json()}    # returns dictionary
    Log To Console    json-> ${json}    # json-> {'City': 'Delhi', 'Temperature': '46 Degree celsius', 'Humidity': '86 Percent', 'Weather Description': 'scattered clouds', 'Wind Speed': '65 Km per hour', 'Wind Direction degree': '97 Degree'}

    # check type of ${response.json()}
    ${type string}=    Evaluate     type(${json}).__name__
    Log To Console     Type of json-> ${type string}    # dict


    # since ${json} or response.json() is a dictionary, can do all dictionary operations
    Log To Console    Value of key Humidity is ${json}[Humidity]    # extract dictionary value using key Humidity

    # Get value using Json Keyword- Get Value From Json
    ${values}=    Get Value From Json    ${json}    $..Temperature    # values -> ['174 Degree celsius'] --return array of values
    Log To Console    value -> ${values}[0]    # value -> 174 Degree celsius

