# Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros e que deve retornar a
#  posição da primeira ocorrência do valor no array. Se o valor não existir no array, retornar -1.


def posicao_no_array (array, valor)
    for n in (0.. array.size-1)
        if array [n] == valor
            return n
        end
    end
    return -1 
end         

array = [10, 20, 30, 2, 4, 6]

valor = 30

print posicao_no_array(array, valor)
