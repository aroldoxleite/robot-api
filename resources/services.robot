***Settings***
Library     OperatingSystem
Library     RequestsLibrary


***Keywords***
#hooks
Get Json
    [Arguments]     ${file_name}

    ${string_file}         Get File    ${EXECDIR}/resources/fixtures/${file_name}
    ${json}                Evaluate    json.loads($string_file)    json

    [Return]    ${json}


#services
Post Postagem
    [Arguments]         ${payload}

    Create Session      jsonplaceholder     http://jsonplaceholder.typicode.com
    &{header}=          Create Dictionary   Content-Type=application/json
    ${resp}=            Post Request        jsonplaceholder        /posts       data=${payload}       headers=${header}

    [Return]    ${resp}

