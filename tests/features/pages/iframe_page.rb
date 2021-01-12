class InnerIframe < SitePrism::Page

  element :name, "#first_name"
  element :last_name, "#last_name"

end

class IframePage < SitePrism::Page
  
  set_url 'mudancadefoco/iframe'
  iframe :preencher_campos, InnerIframe, '#id_do_iframe'

end