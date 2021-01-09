Quando('interajo com dropdown e select.') do
  visit '/buscaelementos/dropdowneselect'
  find('.btn.dropdown-button').click
  find('#dropdown3').click
  select 'Chrome', from: 'dropdown'
  sleep 0.3
  find('#dropdown>option[value="2"]').select_option
end

Quando('preencho o autocomplete.') do
  visit '/widgets/autocomplete'
  fill_in id: 'autocomplete-input', with: 'Rio de Jane'
  find('ul[id^="autocomplete-options"]').click
  sleep 0.5
end