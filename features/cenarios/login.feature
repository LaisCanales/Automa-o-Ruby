#language : pt

Funcionalidade: Login
    Para que eu possa realizar os processos de aprovação, autorização, validação e liberação de título
    Sendo um usuário
    Posso acessar o sistema Aprovador-Mobile com login e senha previamente cadastrados.


    Contexto: Página principal
        Dado que eu acesso a página principal
    
    
        Cenário: Usuário deve ser autorizado
    
            Quando eu faço login com "AYO" e "ayo"
            Então devo ver o texto "Aprovador Mobile" no cabeçalho
        
       
        Esquema do Cenario: Tentativa de login
    
            Quando eu faço login com "<usuario>" e "<senha>"
            Então devo ver a mensagem "<alerta>"
        
            Exemplos:
            |usuario|senha|alerta|
            |AYO|XPTO|Usuário e/ou Senha inválidos|
            |XPTO|ayo|Usuário e/ou Senha inválidos|