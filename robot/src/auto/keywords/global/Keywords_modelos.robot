*** Settings ***
Resource    ../../../config/package.robot

*** Keywords ***
Clicar em
    [Arguments]                      ${element}
    Wait Until Element Is Enabled    ${element}
    Scroll Element Into View         ${element}
    Wait Until Element Is Visible    ${element}
    Click Element                    ${element}

Duplo clique em
    [Arguments]                      ${element}
    Wait Until Element Is Enabled    ${element}
    Scroll Element Into View         ${element}
    Wait Until Element Is Visible    ${element}
    Double Click Element             ${element}

Clicar no sub-menu
    [Arguments]    ${text}
    Clicar em    ${menu_acoes}
    Clicar em    //*[@role="menuitem"][contains(.,"${text}")]

Clicar no botão
    [Arguments]    ${text}
    Validar Presenca    //button[@aria-label="${text}"]
    Clicar em           //button[@aria-label="${text}"]

Preencher Campo
    [Arguments]      ${element}    ${text}
    Clicar em        ${element}
    Input Text       ${element}    ${text}


Selecionar Combo Box
    [Arguments]                          ${element}    ${text}
    Clicar em                            ${element}
    Wait Until Element Is Visible        ${element}
    Clicar em                            //li[contains(.,"${text}")]
    Wait Until Element Is Not Visible    //li[contains(.,"${text}")]

Validar Presenca
    [Arguments]                      ${element}
    Wait Until Element Is Enabled    ${element}
    Scroll Element Into View         ${element}
    Wait Until Element Is Visible    ${element}
    Element Should Be Visible        ${element}


Validar Mensagem
    [Arguments]         ${status}    #    ${text}
    Validar Presenca          ${msg_Toast}
    Element Should Contain    ${msg_Toast_Status}    ${status}
    # Element Should Contain    ${msg_Toast_Texto}     ${text}
    Wait Until Element Is Not Visible    //*[@role="progressbar"]
    Click Element    ${msg_Toast_close}

# Validar loading
#     [Arguments]                          ${element}
#     Wait Until Element Is Visible        ${element}
#     Wait Until Element Is Not Visible    ${element}
