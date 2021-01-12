Quando('mapeio uma tabela.') do
  lista_de_elementos = ListaDeElementos.new
  lista_de_elementos.load

  lista = lista_de_elementos.lista

  expect(lista.size).to eq 24

  expect(lista[0].text).to eql 'Arroz'

  lista.each do |element|
    log(element.text)
  end
end