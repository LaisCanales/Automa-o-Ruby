#language : pt

Funcionalidade: Validacao
    Para que eu possa realizar o fluxo do Título
    Tendo um título na situação ABERTO
    Posso realizar Validação do Título.


    Contexto: Página de Validacao
        Dado que eu cadastro um título
        E que estou logado no sistema com usuário e senha "AYO" e "ayo"
        E que eu acesso o menu de "Contas a Pagar"
        E que eu acesso o menu de "Validação"

    Cenario: Seleção pelo checkbox do Título
    
        Quando pesquiso pelo número de documento do título
        E seleciono o título marcando o checkbox
        E clico no botão "Validar"
        Entao título "Validado"

     Cenario: Seleção pelo checkbox que seleciona todos os Títulos
    
        Quando pesquiso pelo número de documento do título
        E faço a selecao pelo checkbox que seleciona todos os títulos
        E clico no botão "Validar"
        Entao título "Validado"
