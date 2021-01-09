Quando('eu clico em um botão.') do
  visit '/buscaelementos/botoes'
  find('#teste').click
end

Então('verifico se o texto desapareceu da tela com sucesso.') do
  have_text 'Você Clicou no Botão!'

  find('#teste').click

  # assert_no_text text, 'Você Clicou no Botão!'
  has_no_text? 'Você Clicou no Botão!'
end