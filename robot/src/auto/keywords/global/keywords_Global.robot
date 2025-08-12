*** Settings ***
Resource    ../../../config/package.robot

*** Variables ***
${BROWSER}    chrome
${ambiente}    spj_dev


*** Keywords ***
Acessar Sistema
    Run Keyword    Parametros navegador


Verificar loading Pesquisar
    Sleep    0.5s
    Wait Until Element Is Not Visible    //msp-progress-skeleton[@id="progress"]
Parametros navegador
    ${downloadDir}    Set Variable    ${EXECDIR}${/}robot${/}arquivos${/}downloads
    ${uploadDir}      Set Variable    ${EXECDIR}${/}robot${/}arquivos${/}uploads
    Set Global Variable    ${downloadDir}
    Set Global Variable    ${uploadDir}

    ${chromeOptions}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    ${prefs}      
    ...    Create Dictionary    download.default_directory=${downloadDir}          # Defini pasta default de donwload       
    ...    plugins.always_open_pdf_externally=${True}                              # Defini que download irá baixar e não abrir
    ...    timezone=America/Sao_Paulo                                              # Defini timezone padrão
    
    Call Method    ${chromeOptions}    add_experimental_option    prefs    ${prefs}
    Call Method    ${chromeOptions}    add_argument    --disable-gpu                # Desabilita partes gráficas
    Call Method    ${chromeOptions}    add_argument    --disable-dev-shm-usage      # Desabilita armazenamento de memória
    Call Method    ${chromeOptions}    add_argument    --no-sandbox                 # desativa camada de isolamento
    Call Method    ${chromeOptions}    add_argument    --lang\=pt-BR                # define PT-BR como padrão
    Call Method    ${chromeOptions}    add_argument    --window-size\=1336,768      # define resolução
    Call Method    ${chromeOptions}    add_argument    --no-warn-script-location    # suprimir avisos
    # Call Method    ${chromeOptions}    add_argument    --start-maximized            # Inicializa o navegador maximizado
    # Call Method    ${chromeOptions}    add_argument    --incognito                #  modo anonino

    Open Browser    
    ...    url=${link.${ambiente}}
    ...    browser=${BROWSER}
    ...    options=${chromeOptions}
    
    Validar Presenca    //*[@id="kc-form-login"]
    

Realizar login com perfil de "${perfil}"
    Validar Presenca    //*[@id="kc-form-login"]
    
    Preencher Campo     ${inpt_CampoLogin}    ${login.${perfil}}
    Preencher Campo     ${inpt_CampoSenha}    ${login.psw}
    Clicar em           ${btn_BotaoEntrar}

Apagando arquivos download
    ${arquivos}    List Directory    ${downloadDir}    #    pattern=*.pdf
    FOR    ${arquivo}    IN    @{arquivos}
        Remove File    ${downloadDir}${/}${arquivo}
    END

Limpar campo 
    [Arguments]    ${campo}
    Press Keys     ${campo}    CTRL+a    DELETE

Limpar campos e preencher
    [Arguments]                          ${element}    ${text}
    Clicar em                            ${element}
    Press Keys                           ${element}     CTRL+A+DELETE
    Input Text                           ${element}    ${text}

Loading
    Sleep    2s

Esperar até o diretório de download não estar vazio
    FOR    ${i}    IN RANGE    0    5
        ${status}    Run Keyword And Return Status    Directory Should Not Be Empty    ${downloadDir}

        IF    ${status} == ${True}
            BREAK
        END

        Sleep    5s
    END

Realizar logout
    Clicar em    //button[@id="footer-logout"]
    Clicar em    //input[@value="Sair"]