***Settings***
Resource    ../resources/services.robot

***Test Cases***
Realizar uma postagem com sucesso
    
    ${postagem}         Get Json            postagem.json
    ${resp}             Post Postagem       ${postagem}
    Status Should Be    201                 ${resp}
    Should Be Equal     ${resp.json()['title']}      ${postagem['title']}





