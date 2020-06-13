Feature:
    Como jugador
    Quiero elegir la dificultad en la que juego
    Para jugar en diferentes niveles
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    When presionamos el boton "6" 
    Then deberia ver un mensaje "Ingresa el codigo secreto de 6 digitos"
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    When presionamos el boton "4" 
    Then deberia ver un mensaje "Ingresa el codigo secreto de 4 digitos"
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    When presionamos el boton "8" 
    Then deberia ver un mensaje "Ingresa el codigo secreto de 8 digitos"