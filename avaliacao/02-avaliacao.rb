# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam a mesma posição em cada array.

def multiplica_arrays(array_1, array_2)
    total = 0
    if array_1.size != array_2.size
        return nil
    
    else 
        for n in (0..array_1.size)
            total = total + (array_1[n].to_i * array_2[n].to_i)
        end   
    end
    return total
    
end


puts multiplica_arrays([5, 7, ], [10, 10, 10]) # nil
puts multiplica_arrays([5, 7, 9], [10, 10, 10])


# Ex.:
puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.