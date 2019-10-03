# instanciando o model Login e passando para um variavel
login = Login::LoginPage.new()
#paginaLogin = 'http://10.0.3.10:8080/aprovador/#/login'

Dado("que eu acesso a página principal") do
    login.visitaPagina('http://10.0.2.47:8080/aprovador/#/login')
end

Quando("eu faço login com {string} e {string}") do |usuario, senha|
    login.realizaLogin(usuario, senha)
end

Então("devo ver o texto {string} no cabeçalho") do |cabecalho|
    expect(page).to have_content cabecalho
end

Então("devo ver a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end