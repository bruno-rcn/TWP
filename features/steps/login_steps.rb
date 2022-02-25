Dado('que acesso a tela de login') do
    @nav.tap_hamburguer
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
end
  
Quando('submeto minhas credenciais') do |table|
    user = table.rows_hash
    @login_screen.sign_in(user[:email], user[:senha])
end
  
Então('devo ver a notificacao: {string}') do |string|
    log(get_source) # imprime o xml da pagina no console
    expect(@toaster.toast.text).to eql string
end