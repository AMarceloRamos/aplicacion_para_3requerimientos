#decidi agrupar los archivos por modulos para asi ejecutar los programas en una sola aplicacion 

module CalculoImc

    
    class Imc
        #funcion para calcular el imc
        def formula_imc(valor1, valor2)
        imc = valor1 / valor2**2
        end

        # funcion que determina el indice corporal
        def calcular_imc(imc)
        puts("Tu índice de masa corporal es => #{imc}")

        #*** tabla de evaluacion ****

        # Índice de Masa orporal Peso
        # Inferior a 18.5 Está bajo de peso
        # Entre 18.5 – 24.9 Es un peso Normal
        # Entre 25.0 – 29.9 Está en sobrepeso
        # Entre 30.0 o más Hay obesidad
     
       #función que evalua el índice de la persona
       #decidi cambiar el  if por un case 
        case imc
        when 0...18.5
        puts "El índice calculado es Bajo de peso"
        when 18.5...25.0
        puts "El índice calculado es Normal"
        when 25.0...30.0
        puts "El índice calculado es Sobrepeso"
        when 30.0...35.0
        puts "El índice calculado es Obesidad Moderado"
        when 35.0...40.0
        puts "El índice calculado es Obesidad Severo"
        else
        puts "El índice calculado es Obesidad Muy Severo"
        end
    end
        #funcion que inicia el programa
        def iniciar_calculo_imc
        puts "**************************************************************************************************"
        puts "                                               -Sistema:                                         "
        puts "                            Hola, ¡Bienvenido/a al sistema de cálculo IMC!                        "
        puts "                                                                                                  "
        puts "**************************************************************************************************"
        puts ""
        puts "Sistema: Ingresa tu peso en Kilogramos: "
        peso = gets.chomp.to_f
        puts "Sistema: Ahora ingresa tu altura expresada en metros: "
        altura = gets.chomp.to_f
        resultado = formula_imc(peso, altura)
        calcular_imc(resultado)
        end
    end
end