module MetodosComuns

    class MetodosComunsPage    
        include Capybara::DSL

        def acessaMenu(menu)
            find('.md-button', text:menu).click
        end
        
        def pesquisaTitulo(titulo)
            find('input[name=search]').set titulo
        end

        def selecionaTítulo()
            find('[name=checkbox-0]').click
        end

        def selecionaTodosTítulos()
            find('[name=checkbox-master]').click
        end

        def clicaBotao()
            find('[name=action-button]').click
        end

    end

end