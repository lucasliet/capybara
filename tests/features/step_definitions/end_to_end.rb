Quando('eu cadastro o usuário.') do
  visit '/users/new'
  
  fill_in id: 'user_name', with: 'bruno'
  fill_in id: 'user_lastname', with: 'batista'
  fill_in id: 'user_email', with: 'batista@gmail.com'

  find('input[value="Criar"]').click
end

Então('verifico se o usuário foi cadastrado.') do
  page.has_text? 'Usuário Criado com sucesso'
end

Quando('edito um usuário.') do
  find('.btn.waves-light.blue').click
  fill_in id: 'user_email', with: 'bruno_batista@gmail.com'
  find('input[value="Criar"]').click
end

Então('verifico se o usuário foi editado.') do
  page.has_text? 'Seu Usuário foi Atualizado!'
  page.has_text? 'Email: bruno_batista@gmail.com'
end