*** Settings ***
Library        Browser

Resource        ./loginSteps.robot
Resource        ../pages/novoDebitoPage.robot


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


####################################### BDD - Gherkin #####################################################


#Scenario: Validar Login com sucesso
 #   Given quando acesso a pagina
 #   When informo usuario e senha
 #   Then o sistema apresenta a pagina com o Dashboard