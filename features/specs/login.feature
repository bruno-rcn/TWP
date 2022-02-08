#languege: pt

Funcionalidade: Login

    Cenario: Login com sucesso
        Dado que acesso a tela de login
        Quando submeto minhas credenciais
            | email | eu@papito.io |
            | senha | qaninja      |
        Entao devo ver a notificacao: "Show! Suas credencias são válidas."