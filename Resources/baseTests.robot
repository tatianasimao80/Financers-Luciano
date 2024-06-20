*** Settings ***
Library        Browser

*** Keywords ***

Iniciar testes

    ${old_timeout}=        Set Browser Timeout        15 seconds    
    #para resolver no momento o problema de TimeOut
    #New Context    recordVideo={'dir':'videos/${TEST_NAME'}}        viewport={'with': 1920, 'heigth': 1080}
    #Set Browser Timeout        100 seconds
    Open Browser         https://luciano.app.br/Identity/Account/Login         headless=false          
    ${old_timeout}=        Set Browser Timeout        15 seconds





Finalizar testes
    Take Screenshot        ${TEST NAME}
    Close Browser