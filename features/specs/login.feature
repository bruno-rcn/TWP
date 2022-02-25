#language: pt

Funcionalidade: Login

    @login
    Cenario: Login com sucesso
        Dado que acesso a tela de login
        Quando submeto minhas credenciais
            | email | eu@papito.io |
            | senha | qaninja      |
        Então devo ver a notificacao: "Show! Suas credenciais são validas."