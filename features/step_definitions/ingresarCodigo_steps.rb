When('escribimos en el campo {string} el valor {string}') do |campo, valor|
    fill_in(campo, :with => valor)
  end
  
  When('presionar el boton {string}') do |boton_iniciar|
    click_button(boton_iniciar)
  end
  
  Then('deberia ver el mensaje {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end