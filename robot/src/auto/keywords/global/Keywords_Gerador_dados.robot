*** Settings ***
Resource    ../../../config/package.robot

*** Keywords ***
Gerar PJ
    ${gerar_PJ}
    ...    Create Dictionary    
    ...    acao=gerar_empresa
    ...    pontuacao=S
    ...    estado=SP
    ...    idade=5
    
    ${Request_PJ}
    ...    POST
    ...    url=${link_API.url_api}
    ...    data=${gerar_PJ}    

    ${PJ_dados}    Parse HTML         ${Request_PJ.text} 
    ${PJ_CNPJ}     Get Input Value    ${PJ_dados}    cnpj
    Set Global Variable        ${PJ_CNPJ}

Gerar Pessoa
    ${gerar_pessoa}
    ...    Create Dictionary    
    ...    acao=gerar_pessoa
    ...    pontuacao=N
    ...    sexo=I
    ...    txt_qtde=4
    
    ${Request_Pessoa}
    ...    POST
    ...    url=${link_API.url_api}
    ...    data=${gerar_pessoa}

    Set Global Variable    ${PessoaAutor_1}    ${Request_Pessoa.json()[0]}
    Set Global Variable    ${PessoaAutor_2}    ${Request_Pessoa.json()[1]}
    Set Global Variable    ${PessoaVitima_1}    ${Request_Pessoa.json()[2]}
    Set Global Variable    ${PessoaVitima_2}    ${Request_Pessoa.json()[3]}

Gerar Veiculo
    ${gerar_veiculo}
    ...    Create Dictionary  
    ...    acao=gerar_veiculo
    ...    pontuacao=N
    ...    estado=SP
    
    ${request_veiculo}
    ...    POST
    ...    url=${link_API.url_api}
    ...    data=${gerar_veiculo}
    
    ${veiculo_dados}    Parse Html    ${request_veiculo.text}
    ${veiculo_marca}    Get Input Value    ${veiculo_dados}    marca
    ${veiculo_placa}    Get Input Value    ${veiculo_dados}    placa_veiculo

    Set Global Variable    ${veiculo_marca}
    Set Global Variable    ${veiculo_placa}
