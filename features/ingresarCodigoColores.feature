Feature:
    Como jugador
    Quiero escribir un codigo secreto con colores
    Para que mi oponente trate de adivinarlo
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    And clickeamos la opcion "colores"
    And presionamos el boton "4"
    When escribimos en el campo "codigo" el valor "avcm" 
    And presionar el boton "Iniciar el juego"
    Then deberia ver el mensaje "Ingrese su intento"