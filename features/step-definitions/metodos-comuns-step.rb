login = Login::LoginPage.new()
metodosComuns = MetodosComuns::MetodosComunsPage.new()
apiTitulo = APITitulo::APITituloPage.new()

Dado("que eu cadastro um título") do
    @numeroDocumento = rand(1..99999)
    @idTit = apiTitulo.cadastratitulo(@numeroDocumento)
end

Dado("que eu valido o título") do
    apiTitulo.validatitulo(@idTit)
end

Dado("que eu autorizo o título") do
    apiTitulo.autorizatitulo(@idTit)
end

Dado("que eu aprovo o título") do
    apiTitulo.aprovatitulo(@idTit)
end

Dado("que eu libero o título") do
    apiTitulo.liberatitulo(@idTit)
end

Dado("que estou logado no sistema com usuário e senha {string} e {string}") do |usuario, senha|
    login.visit('http://10.0.2.47:8080/aprovador/#/login')
    login.realizaLogin(usuario, senha)    
end

Dado("que eu acesso o menu de {string}") do |menu|
    metodosComuns.acessaMenu(menu)
end

Quando("pesquiso pelo número de documento do título") do
    metodosComuns.pesquisaTitulo(@numeroDocumento)
end

Quando ("seleciono o título marcando o checkbox") do
    metodosComuns.selecionaTítulo()
end

Quando ("faço a selecao pelo checkbox que seleciona todos os títulos") do
    metodosComuns.selecionaTodosTítulos()
end

Quando ("clico no botão {string}") do |botaoOperacao|
    #Operacoes = ["Validar", "Autorizar", "Aprovar", "Liberar"]
    for botaoOperacao in ["Validar", "Autorizar", "Aprovar", "Liberar"]do
        metodosComuns.clicaBotao()
    end
end

Entao ("título {string}") do |statusTitulo|
   # Status = ["Validado", "Autorizado", "Aprovado", "Liberado"]
    for statusTitulo in ["Validado", "Autorizado", "Aprovado", "Liberado"]do
        metodosComuns.pesquisaTitulo(@numeroDocumento)
        expect(page).to have_no_content "Num. Doc: #{@numeroDocumento}"
    end
end