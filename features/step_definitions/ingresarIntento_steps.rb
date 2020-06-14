When('ingresamos en el field {string} el valor {string}') do |campo,valor|
    fill_in(campo, :with => valor)
  end
  
  When('pulsamos el boton {string}') do |boton_verificar|
    click_button(boton_verificar)
  end

  Then('mostrar ver el mensaje {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end
  Then('mostrar el texto {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end