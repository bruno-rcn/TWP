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

Dado('que acesso a tela de checkbox') do
    @nav.tap_hamburguer
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
end
  
Quando('marco a opção ruby') do
    @check_locator = "//android.widget.CheckBox[contains(@text,'Ruby')]"
    find_element(xpath: @check_locator).click
end
  
Então('esta opção deve estar marcada') do
    @check_result = find_element(xpath: @check_locator)
    expect(@check_result.checked).to eql "true"
end

Quando('eu marco as seguintes techs:') do |table|
    @tech = table.hashes

    @tech.each do |item|
        # log(item["tech"])
        check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
        find_element(xpath: check_locator).click
    end
end

Então('todas as opções devem estar marcadas') do
    @tech.each do |item|
        check_locator = "//android.widget.CheckBox[contains(@text,'#{item["tech"]}')]"
        check_result = find_element(xpath: check_locator)
        expect(check_result.checked).to eql "true"
    end
end