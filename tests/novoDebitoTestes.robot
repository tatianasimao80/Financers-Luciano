*** Settings ***

Library        Browser

Resource        ../pages/loginPage.robot
Resource        ../data/login.robot
Resource        ../Resources/baseTests.robot  
Resource        ../pages/debitoPage.robot
Resource        ../pages/novoDebitoPage.robot





Test Setup           Iniciar testes
Test Teardown        Finalizar testes


*** Test Cases ***

Acessar tela Débito
    Preencher Login        ${email}        ${password}
    Verificar Login com sucesso
    Clicar abrir Débito
    

Cadastrar novo débito
    ${old_timeout}=        Set Browser Timeout        15 seconds
    Preencher Login        ${email}        ${password}
    Clicar Débito
    Sleep        3s
    Clicar Novo
    Take Screenshot        Novo Debito
    Sleep        5s    