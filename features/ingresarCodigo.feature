Feature:
    Como jugador
    Quiero escribir un codigo secreto
    Para que mi oponente trate de adivinarlo
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    And presionamos el boton "4"
    When escribimos en el campo "codigo" el valor "1234" 
    And presionar el boton "Iniciar el juego"
    Then deberia ver el mensaje "Ingrese su intento"