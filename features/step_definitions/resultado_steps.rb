Then ('recargo la pagina iniciar') do
    visit '/iniciar'
  end
  Then ('recargo la pagina resultado final') do
    visit '/resultadofinal'
  end
  Then('aparece el {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end
  Given('ponemos en el campo {string} el valor {string}') do |campo,valor|
    fill_in(campo, :with => valor)
  end
  
  Given('clickeamos el boton {string}') do |boton_partida|
    click_button(boton_partida)
  end
  
  Then('nos muestra {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end