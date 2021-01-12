Quando('preencho o formulário.') do
  mapeando_elementos_page = MapeandoElementosPage.new
  mapeando_elementos_page.load

  mapeando_elementos_page.preencher 'bruno'
end