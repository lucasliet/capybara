Quando('clico no elemento da sessão.') do

  navbar_page = NavbarPage.new
  navbar_page.load

  navbar_page.navbar
             .medium
             .click

  expect(page).to have_current_path('https://medium.com/automa%C3%A7%C3%A3o-com-batista', url: true)
end