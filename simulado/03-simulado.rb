# Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro 
# e deve retornar o valor da média aritmética entre todos os números do array.

def calcula_media(array)
    soma_elemento = 0.0 # declarado em float

    for index in (0..array.size-1)
        soma_elemento = soma_elemento + array[index]    
    end
    return soma_elemento / array.size
end

array = [ 10, 14, 20, 9, 16, 22 ]
puts calcula_media (array)

puts(calcula_media([10, 20, -10, 30, 0, 70]))  # deve imprimir 20

puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
