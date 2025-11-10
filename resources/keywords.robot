** Settings **
Library    SeleniumLibrary
Library    FakerLibrary    locale=pt_Br
Library    String

** Keywords **
Generate Name
    ${fake_name}=    FakerLibrary.Name
    Log    Nome gerado: ${fake_name}
    [Return]    ${fake_name}
Generate Email
    [Arguments]    ${name}
    ${lower_name}=    Convert To Lowercase    ${name}
    # Remove todos os tipos de espaços (inclusive não visíveis)
    ${no_spaces}=    Replace String Using Regexp    ${lower_name}    \\s+    ${EMPTY}
    # Remove acentos substituindo caracteres acentuados comuns
    ${no_accents}=    Replace String Using Regexp    ${no_spaces}    [áàãâä]    a
    ${no_accents}=    Replace String Using Regexp    ${no_accents}    [éèêë]    e
    ${no_accents}=    Replace String Using Regexp    ${no_accents}    [íìîï]    i
    ${no_accents}=    Replace String Using Regexp    ${no_accents}    [óòõôö]    o
    ${no_accents}=    Replace String Using Regexp    ${no_accents}    [úùûü]    u
    ${no_accents}=    Replace String Using Regexp    ${no_accents}    [ç]    c
    ${email}=    Catenate    SEPARATOR=@    ${no_accents}    test.com
    Log    Email gerado: ${email}
    [Return]    ${email}
Type a name
    ${name}=    Generate Name
    Input Text    //*[@id="nome"]    ${name}
    Set Global Variable    ${GLOBAL_NAME}    ${name}
    [Return]    ${name}
Type an email
    ${email}=    Generate Email    ${GLOBAL_NAME}
    Input Text    //*[@id="email"]    ${email}
    Set Global Variable    ${GLOBAL_EMAIL}    ${email}
    [Return]    ${email}
Type a password
    # ${password}=    Set Variable    123456
    # Input Text    //*[@id="senha"]    ${password}
    # Set Global Variable    ${GLOBAL_PASSWORD}    ${password}
    # [Return]    ${password}
    Input Password    //*[@id="password"]    password123