# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
# a função retorna o array inteiro.


def remove_da_posicao(array, posicao_alvo)
    novo_array = []
    if posicao_alvo >= array.size - 1 || posicao_alvo <= 0
        return array
    else 
        novo_array = []
        for n in (0 .. array.size - 2) 
            if n < posicao_alvo 
                novo_array[n] = array[n]
            elsif n >= posicao_alvo 
                novo_array[n] = array[n + 1]
            end
        end
        return novo_array
    end
end


numero = [10, 20, 30, 2, 40, 66, 9]


print remove_da_posicao(numero, 9) # false
puts
print remove_da_posicao(numero, 5) # true
