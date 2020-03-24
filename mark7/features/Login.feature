#language:pt

Funcionalidade: login 
    
    Para que eu possa cadastrar e gerenciar tarefas
    Sendo um usuário 
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    @logout
    Cenário: Usuário deve ser autorizado

        Dado que eu acesso à página de login
        Quando eu faço login com "email" e "senha"  
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Maycon"

    Cenário: Senha errada

        Dado que eu acesso à página de login
        Quando eu faço login com "email" e "senha"  
        Então devo ver a seguinte mensagem "Senha inválida"

    Cenário: Usuário não existe

        Dado que eu acesso à página de login
        Quando eu faço login com "email" e "senha"  
        Então devo ver a seguinte mensagem "Usuário não cadastrado"


    Cenário: Email incorreto 

        Dado que eu acesso à página de login
        Quando eu faço login com "email" e "senha"  
        Então devo ver a seguinte mensagem "Email incorreto ou ausente"
