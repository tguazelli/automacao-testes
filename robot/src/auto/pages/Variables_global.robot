*** Comments ***
# Aqui serão definidas todos os locators dos elementos que a automação vai interagir durante a execução dos cenários de teste.
# Para criação de novas Keywords utilize o conceito de lowerCamelCase(https://pt.wikipedia.org/wiki/CamelCase).
# Para separação utilização underline('_')
# Evitar o uso de qualquer acentuação!
# Para elementos do tipo botão: "btn"
# Para elementos do tipo input: "inpt"
# Para elementos do tipo mensagem(sucesso, falha, alerta, aviso...): "msg"
# Para elementos do tipo texto: "txt"
# Para elementos do tipo combo: "cmb"
# Para elementos do tipo imagem(logo, banner...): "img"
# Para elementos do tipo menu: "menu"
# Para elementos do tipo sub-menu: "subMenu"
# Para elementos do tipo check box: "chkbx"
# Para elementos do tipo tabela: "tbl"
# Para elementos do tipo loading(carregando, salvando, registrando, aguarde...): "loading"

*** Variables ***
###################################################
################## Tela de login ##################
###################################################
${inpt_CampoLogin}       //*[@id="username"]
${inpt_CampoSenha}       //*[@id="password"]
${btn_BotaoEntrar}       //*[@id="kc-login"]

#######################################################
################# Elementos Genéricos #################
#######################################################
${menu_acoes}           //span[@class='p-button-icon pi pi-chevron-down']
${menu_animacao}        //div[contains(@class,"overlayAnimation")]
${btn_salvarFormulario}    //*[@id="save"]