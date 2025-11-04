** Settings **
Library    SeleniumLibrary

** Variables **
${url}    https://front.serverest.dev/login

** Keywords **
Open Robot site
    Open Browser    ${url}   chrome

** Test Cases **
Cenario 1: Test Robot
    Open Robot site
    Input Text    //*[@id="email"]    fulano@qa.com
    Input Password    //*[@id="password"]    teste
    Click Button    //*[@id="root"]/div/div/form/button
    # Close Browser