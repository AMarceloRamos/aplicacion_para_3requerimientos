#*** Programa ejecuta el juego de adivinanza ***
#decidi agrupar los archivos por modulos para asi ejecutar los programas en una sola aplicacion 
module JuegoAdivinanzas

  class Adivina

    #metodo que permite al sistema imprimir numero al azar del 1 al 9/
    def juego_maquina
      numero_maquina = rand(1..9)
      return numero_maquina
    end

    #metodo que define al ganador del juego 
    def ganador(numero_jugador, numero_maquina)
      if numero_jugador == numero_maquina
        puts "Juez: El número dicho por el jugador es el número que la máquina pensó."
        puts "-Maquina: ¡Adivinaste!... ¡Bien jugado!"
      else
        puts "Juez: El número dicho por el jugador no es el número que la máquina pensó."
        puts "-Maquina: ¡Mala suerte!... Te falta percepción."
      end
    end

    #metodo que define el jugador
    def iniciar_juego
      puts "**************************************************************************************************"
      puts "                                            -Maquina:                                             "
      puts "                             Hola, bienvenido al juego de adivinanzas                             "
      puts "                                                                                                  "
      puts "**************************************************************************************************"
      puts ""
      puts "-Maquina: Presiona la tecla 1 para jugar o pulsa cualquier otra tecla para salir, si no quieres jugar :("
      opcion_escogida = gets.chomp.to_i
      opcion = opcion_escogida
      if opcion == 1
        loop do
          puts "-Maquina: Muy bien, escogiste jugar. Continuemos con el juego :)"
          puts "-Maquina: Al igual que en un juego real, voy a pensar en un número, y tú adivinarás el número en que pensé, ¿vale?"
          puts "-Maquina: Ingresa un número que creas que es el que estoy pensando, y si es correcto, ganas. ¡Ves qué fácil!"

          numero_jugador = 0
          #agrege el loop do para que el jugador pueda seguir intentandolo hasta que decida interrumpir el juego
          loop do
            puts "Ingresa un número entre 1 y 10:"
            numero_jugador = gets.chomp.to_i
            break if numero_jugador > 0 && numero_jugador < 11
          end
          numero_maquina = juego_maquina()
          puts "El número en el que estaba pensando era: #{numero_maquina}"
          ganador(numero_jugador, numero_maquina)
          puts "¿Quieres seguir jugando? Presiona 1 para seguir o cualquier otro número para terminar."
          opcion_seguir = gets.chomp.to_i
          break if opcion_seguir != 1
        end
        puts "-Maquina: Gracias por participar... ¡Vuelve para que volvamos a competir! ;)"
      end
    end
  end
end
  
