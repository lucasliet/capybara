Quando('eu acesso uma página.') do
  @home = HomePage.new
  @home.load
end

Então('checo se estou na página correta.') do
  expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end