# Exercício 08
# 1) Faça um programa para calcular a boa e velha tabuada.
# Pergunte ao usuário qual o número que ele quer o cálculo da taboada e imprima na tela os resultados.
# Por exemplo:
# Se o usuário digitar 7, deve imprimir dessa forma:
# 7 x 1 = 7
# ... até
# 7 x 10 = 70

print "Qual número você quer calcular?"
numero_recebido = gets.chomp.to_i

def calcula_multiplicacao(numero_recebido)
    for numero_intervalo in (0..10)
        resultado = numero_recebido * numero_intervalo
        #return
        puts numero_recebido.to_s + " * " + numero_intervalo.to_s + " = " + resultado.to_s
    end
end

calcula_multiplicacao (numero_recebido)
