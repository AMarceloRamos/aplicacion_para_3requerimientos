#Rutas de los archivos
require_relative 'juego_adivinanzas'
require_relative 'calculo_imc'
require_relative 'calculo_reajuste'

# inluyendo los modulos de cada archivo
include JuegoAdivinanzas
include CalculoImc
include CalculoReajuste

class Requerimientos
    
    def iniciar_programa
        
        puts "Bienvenido al programa de requerimientos."
        loop do
            puts "Por favor, selecciona una opción:"
            puts "1. Cálculo de Reajuste Salarial"
            puts "2. Juego de Adivinanzas"
            puts "3. Cálculo de IMC"
            opcion = gets.chomp.to_i     
            #metodo case-when
            case opcion
            when 1
            #creando la instancia de la clase Calculo_reajuste del modulo CalculoReajuste
            calc_reajuste = CalculoReajuste::Calculo_reajuste.new
            calc_reajuste.iniciar_calculo_reajuste
            when 2
            #creando la instancia de la clase Adivina del modulo CalculoReajuste
            juego_adivina = JuegoAdivinanzas::Adivina.new
            juego_adivina.iniciar_juego
            when 3
            #creando la instancia de la clase Imc del modulo CalculoImc
            calc_imc = CalculoImc::Imc.new
            calc_imc.iniciar_calculo_imc
            else
            puts "Opción no válida."
            end
            puts "¿Quieres elegir otra opcion? Presiona 1 para seguir o cualquier otro número para terminar."
                opcion_seguir = gets.chomp.to_i
        break if opcion_seguir != 1
        end
    end 
end
#creando objeto requirimientos 
requerimientos = Requerimientos.new
requerimientos.iniciar_programa