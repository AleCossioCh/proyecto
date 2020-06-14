Feature:
    Como jugador que adivina
    Quiero ver mi resultado
    Para saber si gane o perdi
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    And presionamos el boton "4"
    And escribimos en el campo "codigo" el valor "1234" 
    And presionar el boton "Iniciar el juego"
    When ingresamos en el field "intento" el valor "1234"
    And pulsamos el boton "Verificar"
    Then recargo la pagina iniciar
    And recargo la pagina resultado final
    And aparece el "GANASTE FELICIDADES"
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And ponemos en el campo "numeroDeIntentos" el valor "1"
    And clickeamos el boton "partida personalizada"
    And presionamos el boton "4"
    And escribimos en el campo "codigo" el valor "1234" 
    And presionar el boton "Iniciar el juego"
    When ingresamos en el field "intento" el valor "1235"
    And pulsamos el boton "Verificar"
    Then recargo la pagina iniciar
    And recargo la pagina resultado final
    And nos muestra "PERDISTE"