# Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, o preço de cada uma baixa para R$ 0,25.
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.

def preco_maca(quantidade)
    preco_1 = 0.30
    preco_2 = 0.25

    if quantidade <= 0 
        return nil

    elsif quantidade > 11
        preco_maca = preco_2 *quantidade
        
    elsif quantidade <= 11
        preco_maca = preco_1 *quantidade
    
    end 
    
    return preco_maca
end


puts preco_maca(30)
puts preco_maca(100)

puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
puts(preco_maca(12)) # deve imprimir 3.0
puts(preco_maca(10)) # deve imprimir 3.0



