Given('estoy en la pagina de inicio') do
    visit '/'
  end
  
  Given('presiono el boton {string}') do |boton_jugar|
    click_button(boton_jugar)
  end
  
  Given('luego el boton {string}') do |boton_partida|
   click_button(boton_partida)
  end
  
  When('presionamos el boton {string}') do |dificultad|
    click_button(dificultad)
  end
  
  Then('deberia ver un mensaje {string}') do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
  end