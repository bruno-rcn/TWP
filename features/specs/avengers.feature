#language: pt

Funcionalidade: Avengers

    @heroi
    Cenario: Remover o Capitão América

        Dado que acesso a tela Avengers
        Quando apago o Capitão América
        Então devo ver a seguinte mensagem: "Item removido! (posição = 0)"