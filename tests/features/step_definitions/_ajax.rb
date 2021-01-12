Quando('clico no botão.') do
  @ajax_page = AjaxPage.new
  @ajax_page.load

  @ajax_page.clicar_botao
end

Então('verifico se apareceu o texto esperado.') do
  @ajax_page.wait_for_mensagem
  expect(@ajax_page.mensagem.text).to eql 'Você Clicou no Botão!'
end