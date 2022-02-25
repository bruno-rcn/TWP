#language: pt

Funcionalidade: Buttons

    @simples
    Cenário: Clique simples

        Dado que acesso a tela clique simples
        Quando faço um clique simples
        Então devo ver o texto: "Isso é um clique simples"

    
    @longo
    Cenário: Clique longo

        Dado que acesso a tela clique longo
        Quando faço um clique longo
        Então devo ver o texto: "CLIQUE LONGO OK"