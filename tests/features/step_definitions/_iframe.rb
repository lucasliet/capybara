Quando('preencho os campos.') do

  iframe_page = IframePage.new
  iframe_page.load

  iframe_page.preencher_campos do |iframe|

    iframe.name.set 'bruno'
    iframe.last_name.set 'batista'

  end

end