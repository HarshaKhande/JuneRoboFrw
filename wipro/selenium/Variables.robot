*** Variables ***
${my_var}     John
@{my_list}    Apple    Banana    Orange
&{my_dict}    name=admin    password=admin123

*** Test Cases ***
Test Case 1
    Log    ${my_var}
    Log    ${my_list}
    Log    ${my_dict}
    FOR    ${item}    IN    @{my_list}
        Log    ${item}
    END
    Log    ${my_dict}[name]
    Log    ${my_dict}[password]
    FOR   ${key}    ${value}    IN    &{my_dict}
        Log Many    ${key}    ${value}
    END




