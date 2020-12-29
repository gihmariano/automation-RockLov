#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    @temp
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "giane1@hotmail.com" e "1234"
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentar logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input        | senha_input | mensagem_output                  |
            | giane@yahoo.com.br | abc1234     | Usuário e/ou senha inválidos.    |
            | gih@404.com        | 1234        | Usuário e/ou senha inválidos.    |
            | gih$hotmail.com    | abc1234     | Oops. Informe um email válido!   |
            |                    | abc1234     | Oops. Informe um email válido!   |
            | giane@hotmail.com  |             | Oops. Informe sua senha secreta! |



# Cenário: Senha incorreta

#     Dado que acesso a página principal
#     Quando submeto minhas credenciais com senha incorreta
#     Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.


# Cenário: Email não cadastrado

#     Dado que acesso a página principal
#     Quando submeto minhas credenciais com email que não existe na Rocklov
#     Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.


# Cenário: Email incorreto

#     Dado que acesso a página principal
#     Quando submeto minhas credenciais com email incorreto
#     Então vejo a mensagem de alerta: Oops. Informe um email válido!

# Cenário: Email não informado

#     Dado que acesso a página principal
#     Quando submeto minhas credenciais sem o email
#     Então vejo a mensagem de alerta: Oops. Informe um email válido!

# Cenário: Senha não informada

#     Dado que acesso a página principal
#     Quando submeto minhas credenciais sem a senha
#     Então vejo a mensagem de alerta: Oops. Informe sua senha secreta!