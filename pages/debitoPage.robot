*** Settings ***

Library        Browser

Resource        ../pages/loginPage.robot
Resource        ../data/login.robot


*** Keywords ***

Clicar abrir Débito
    #Sleep 3s
    Click        xpath=(//*[@class='nav-text fadeable']['Débito'])[2] 

 

      