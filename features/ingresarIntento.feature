Feature:
    Como jugador que adivina
    Quiero realizar un intento para adivinar el codigo
    Para ganar el juego
Scenario:
    Given estoy en la pagina de inicio
    And presiono el boton "Jugar como invitado"
    And luego el boton "partida rapida"
    And clickeamos "numeros"
    And presionamos el boton "4"
    And escribimos en el campo "codigo" el valor "1234" 
    And presionar el boton "Iniciar el juego"
    When ingresamos en el field "intento" el valor "1235"
    And pulsamos el boton "Verificar"
    Then recargo la pagina iniciar
    And mostrar ver el mensaje "toros: 3"
    And mostrar el texto "vacas: 0"