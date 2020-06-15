Feature:
    Como jugador que adivina
    Quiero realizar un intento para adivinar el codigo
    Para ganar el juego
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    And clickeamos la opcion "colores"
    And presionamos el boton "4"
    And escribimos en el campo "codigo" el valor "avcm" 
    And presionar el boton "Iniciar el juego"
    When ingresamos en el field "intento" el valor "avcb"
    And pulsamos el boton "Verificar"
    Then recargo la pagina iniciar
    And veo el mensaje "El codigo secreto esta formado por las iniciales de los colores."
    And mostrar ver el mensaje "toros: 3"
    And mostrar el texto "vacas: 0"