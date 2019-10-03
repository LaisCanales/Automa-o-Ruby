module Login

    class LoginPage
        include Capybara::DSL
        
        def visitaPagina(url)
            visit url
        end

        def realizaLogin(usuario, senha)
            find('input[name=usuario]').set usuario
            find('input[name=senha]').set senha
            click_button 'Entrar'
        end

    end

end