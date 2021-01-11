Dado('que eu estou na tela de drag and drop.') do
  visit 'iteracoes/draganddrop'
end

Quando('movo o drag and drop.') do
  elemento1 = find '#winston'
  elemento2 = find '#dropzone'

  elemento1.drag_to elemento2
end