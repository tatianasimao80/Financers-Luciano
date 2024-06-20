*** Settings ***

Library        Browser

Resource        ../pages/loginPage.robot
Resource        ../data/login.robot
Resource        ../Resources/baseTests.robot  
Resource        ../pages/debitoPage.robot  


Test Setup        Iniciar testes
Test Teardown        Finalizar testes


*** Test Cases ***

Acessar tela Débito
    Preencher Login        ${email}        ${password}
    Verificar Login com sucesso
    Clicar abrir Débito
    
