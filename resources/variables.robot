** Settings **
Library    SeleniumLibrary

** Variables **
${login_page}    https://front.serverest.dev/login
${register_page}    https://front.serverest.dev/cadastrarusuarios

** Keywords **
Open register page
    Open Browser    ${register_page}    chrome
Open login page
    Open Browser    ${login_page}   chrome
# Set Global Variable    ${login_page}
# Set Global Variable    ${register_page}