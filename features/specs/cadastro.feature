#language: pt

Funcionalidade: Cadastro
    Sendo um musico que possui equipamentos musicais
    Quero fazer o meu cadastro no Rocklov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenário: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome          | email             | senha |
            | Giane mariano | giane1@hotmail.com | 1234  |
        Então sou redirecionado para o Dashboard

    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input    | email_input       | senha_input | mensagem_output                  |
            |               | giane@hotmail.com | 1234        | Oops. Informe seu nome completo! |
            | Giane mariano |                   | 1234        | Oops. Informe um email válido!   |
            | Giane mariano | giane&hotmail.com | 1234        | Oops. Informe um email válido!   |
            | Giane mariano | giane*hotmail.com | 1234        | Oops. Informe um email válido!   |
            | Giane mariano | giane@hotmail.com |             | Oops. Informe sua senha secreta! |

# @tentativa_cadastro
# Cenário: Submeter cadastro sem o nome

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome         |email            |senha|
#         |             |giane@hotmail.com|1234|
#     Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

# @tentativa_cadastro
# Cenário: Submeter cadastro sem o e-mail

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome         |email             |senha|
#         |Giane mariano|                  |1234|
#     Então vejo a mensagem de alerta: "Oops. Informe um email válido!"


# @tentativa_cadastro
# Cenário: Submeter cadastro com e-mail incorreto

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome         |email            |senha|
#         |Giane mariano|giane&hotmail.com|1234|
#     Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

# @tentativa_cadastro
# Cenário: Submeter cadastro sem a senha

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome         |email            |senha|
#         |Giane mariano|giane@hotmail.com|     |
#     Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"

