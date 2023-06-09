#*** Programa para reajustar el salario de los trabajdores con un reajuste del 2.8% ***

#decidi agrupar los archivos por modulos para asi ejecutar los programas en una sola aplicacion 
module CalculoReajuste

  class Calculo_reajuste

    #funcion que calcula el ajuste de salario/ 
    def calculo_reajuste(salario)
      incremento = salario * (2.8 / 100)
      return incremento
    end

    #inicio del programa que pedira al usuario el monto del salario a ajustar/
    def iniciar_calculo_reajuste
      puts "**************************************************************************************************"
      puts "                                           -Sistema:                                              "
      puts "                 Hola, ¡Bienvenido/a al sistema de cálculo de REAJUSTE SALARIAL!                  "
      puts "                                                                                                  "
      puts "**************************************************************************************************"
      puts ""
      puts "Ingrese el salario del trabajador (sin punto):"
      salario = gets.chomp.to_i
      #llamada a la funcion que calcula el ajuste de salario/
      ajuste_salario = calculo_reajuste(salario)
      puts ""
      puts "El monto que se sumará a tu salario con un reajuste de un 2.8% es: $#{ajuste_salario.to_i} pesos"
      #al salario se le adiciona el ajuste/
      salario += ajuste_salario
      #se imprime el nuevo salario con el metodo round()para redondear la cifra/
      puts "Tu salario ahora con el reajuste es de: $#{salario.round} pesos"
      puts "Gracias por usar el programa"
    end
  end
end