# 1) Defina uma função chamada “produto”, que deve receber um array de números e que deve retornar o produto resultante entre eles (a multiplicação de todos os elementos entre si).

def produto(numeros)
    total = 1
    for n in (0..numeros.size-1)
        total = total * numeros[n]
    end   
    return total
end

puts(produto([10, 40, 70, ])) 
puts(produto([1, 10, 100, -1]))

# Ex.:
puts(produto([1, 4, 7]))               # deve imprimir 28
puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0