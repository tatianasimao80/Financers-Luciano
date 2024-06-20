*** Settings ***

Library        Browser

Resource        ../pages/loginPage.robot
Resource        ../data/login.robot




*** Keywords ***

Clicar Débito
    #${old_timeout} =        Set Browser Timeout        15 seconds
    Click        xpath=(//*[@class='nav-text fadeable']['Débito'])[2] 

Clicar Novo
    #Sleep    3s
    Click        xpath=//*[@id="sidebar"]/div/div/ul/li[3]/div/ul/li[1]/a/span/span

Clicar cadastrar Novo
    ${old_timeout}=        Set Browser Timeout        15 seconds
    Click            xpath=(//*[@class='fa fa-plus-circle']['Novo'])[1]
    Click            xpath=//*[@class='chosen-single']
    Click            xpath=(//*[@class='chosen-single chosen-default'] ['[SELECIONE O TIPO DO DÉBITO]'])[1]
    Fill Text        xpath=(//*[@class='chosen-search-input'])[1]        Dinheiro
    Click            xpath=(//*[@class='chosen-single']['Dinheiro'])[1]
    Click            xpath=(//*[@class='chosen-single chosen-default']['SELECIONE O AUTOR DO DÉBITO'])[1]
    Fill Text        xpath=(//*[@class='chosen-search-input'])[2]        Eu
    Click            xpath=(//*[@class='chosen-search-input']['Eu'])[2]
    Click            xpath=(//*[@class='chosen-single chosen-default'] ['SELECIONE O LOCAL DO DÉBITO'])[1]
    Fill Text        xpath=(//*[@class='chosen-single']['Amazon'])[1]        Amazon
    Sleep    5s   


