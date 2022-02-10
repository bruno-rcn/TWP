#language: pt

Funcionalidade: Inputs

    @radio
    Cenario: Radion Button

        Dado que acesso a tela de botões
        Quando escolho a opção ruby
        Então esta opção deve ser marcada

    @check
    Cenario: Checkbox

        Dado que acesso a tela de checkbox
        Quando marco a opção ruby
        Então esta opção deve estar marcada

    @allcheck
    Cenario: Todas as techs que usam Appium
        Dado que acesso a tela de checkbox
        Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Java|
            |Python|
            |Javascript|
            |C#|
            |Robot Framework|
        Então todas as opções devem estar marcadas