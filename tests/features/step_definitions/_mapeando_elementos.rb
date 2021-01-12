Quando('preencho o formulário.') do
  # usando page_helper.rb
  home.load

  home.preencher 'bruno'
end