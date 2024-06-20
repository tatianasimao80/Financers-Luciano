*** Settings ***
Library        Browser

Resource        ../data/login.robot


*** Keywords ***
Preencher Login
    [Arguments]        ${VALUE_EMAIL}        ${VALUE_SENHA}
    Sleep        3s
    Get Title        ==        Login - Financers    
    Fill Text        id=Input_Email        ${VALUE_EMAIL}
    Fill Text        id=Input_Password        ${VALUE_SENHA}
    Click            //button

Verificar Login com sucesso
    Sleep    3s
    Get Title        ==        DashBoard - Financers  
    Take Screenshot              

Verificar Login inválido
    Sleep        3s
    Get Text        //*[text()='Invalid login attempt.']        ==    Invalid login attempt.

Verificar Login vazio
    Sleep        3s
    Get Text        //*[@id="Input_Email-error"]        ==        Digite o Usuário (E-mail)