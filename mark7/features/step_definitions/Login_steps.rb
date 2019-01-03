

    Dado("que eu acesso à página de login") do
        visit 'http://mark7.herokuapp.com'
    end
    
    Quando("eu faço login com {string} e {string}") do |email, senha|
        @email = email
        login = LoginPage.new
        login.faz_login(email, senha)
        
        sleep 10
    end
    
    Então("devo ser autenticado com sucesso") do
       expect(page).to have_content @email
    end
    
    Então("devo ver a seguinte mensagem {string}") do |mensagem|
        expect(page).to have_content mensagem
    end