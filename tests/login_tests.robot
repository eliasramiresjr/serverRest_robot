** Settings **
Library    SeleniumLibrary
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

** Test Cases **
Cenario 1: Should create account
    Open register page
    Type a name
    Type an email
    Type a password
    Click Button    //*[@id="root"]/div/div/form/div[5]/button
    Log To Console    Conta criada com: ${GLOBAL_EMAIL}
Cenario 2: Should login with created account
    Open login page
    Type an email
    Type a password
    Click Button    //*[@id="root"]/div/div/form/button