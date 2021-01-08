Quando('eu faço cadastro.') do
  visit '/users/new'
  fill_in(id: 'user_name', with: 'bruno')
  find('#user_lastname').set('batista')
  find('#user_email').send_keys('brunobatista@gmail.com')
  fill_in(id: 'user_address', with: 'rua 12')
  fill_in(id: 'user_university', with: 'anhaguera')
  fill_in(id: 'user_profile', with: 'qa')
  fill_in(id: 'user_gender', with: 'masculino')
  fill_in(id: 'user_age', with: '28')

  find('input[value="Criar"]').click
end

Então('verifico se fui cadastrado.') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end