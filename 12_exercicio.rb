#  Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer e a posição alvo como parâmetros 
#  e que deve inserir o valor informado na posição alvo, de modo a 'empurrar para a frente' os demais elementos e ao final retornar true.
#  Se a posição alvo não estiver no limite do array, a função deve retornar false.


def insere_no_array(array, valor, posicao_alvo)
    n = array.size

    if n > posicao_alvo
        while posicao_alvo != n
            array[n] =  array[n-1] 
            n = n - 1
        end
        array[posicao_alvo] = valor 
        return true
           
    else
        return false
    end
    
end

array = [10, 20, 30, 2, 4, 9]

puts insere_no_array(array, 5, 9) # false

print insere_no_array(array, 5, 2) # true

print array

 