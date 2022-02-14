Dado('que acesso a tela Avengers') do
    @nav.tap_hamburguer
    @nav.tap_by_text("AVENGERS")
    @nav.tap_by_text("LISTA")
end
  
Quando('apago o Capitão América') do
    @avengers_screen.chekpoint
    @avengers_screen.swipe_esquerda
    @avengers_screen.btnRemove
end
  
Então('devo ver a seguinte mensagem: {string}') do |string|
    expect(@avengers_screen.msg_item_excluido).to eql string
end