# Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.
#     Ex.:

def menor_maior(numeros)
    menor = numeros[0]
    maior = numeros[0]
    for index in (0..numeros.size-1)
        if numeros[index] > maior
            maior = numeros[index]
        elsif numeros[index] < menor
            menor = numeros[index]
        end
    end
    resultado = [menor, maior]
    return resultado         
    
end

print(menor_maior([ 10, 14, 20, 9, 16, 22 ]))
puts

print(menor_maior([ -10, -14, -20, -9, -16, -22 ]))
puts


print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
puts