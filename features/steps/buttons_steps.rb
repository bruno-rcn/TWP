Dado('que acesso a tela clique simples') do
    @nav.tap_hamburguer
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end
  
Quando('faço um clique simples') do
    find_element(id: "io.qaninja.android.twp.id/short_click").click

    # @button = find_element(id: "io.qaninja.android.twp.id/short_click").click
    # Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
end
  
Então('devo ver o texto: {string}') do |string|
    expect(@toaster.toast.text).to eql string

    # expect(@button.text).to eql string
end