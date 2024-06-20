# *** Settings ***
# Library        Browser

# #Resource        ../Resources/baseTests.robot
# Resource        ../data/login.robot



# *** Keywords ***

# quando acesso a pagina
#     [Arguments]        ${email}        ${password}
#     Open Browser         https://luciano.app.br/Identity/Account/Login         headless=false   
#     Sleep        3s
#     Get Title        ==        Login - Financers    
      
    


# informo usuario e senha
#     Fill Text        id=Input_Email        ${email}
#     Fill Text        id=Input_Password        ${password}
#     Click            //button
  

# o sistema apresenta a pagina com o Dashboard
#     Sleep    3s
#     Get Title        ==        DashBoard - Financers  
#     Take Screenshot