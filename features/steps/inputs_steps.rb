Dado('que acesso a tela de botões') do
    @nav.tap_hamburguer
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
end
  
Quando('escolho a opção ruby') do
    @radio_locator = "//android.widget.RadioButton[contains(@text,'Ruby')]"
    find_element(xpath: @radio_locator).click
end
  
  Então('esta opção deve ser marcada') do
    @radio_result = find_element(xpath: @radio_locator)
    expect(@radio_result.checked).to eql "true"
  end