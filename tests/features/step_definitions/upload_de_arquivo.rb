Quando('eu faço um upload de arquivo.') do
  visit '/outros/uploaddearquivos'

  foto = File.join(Dir.pwd, 'features/upload_de_arquivo.png')

  attach_file('upload', foto, make_visible: true)
end