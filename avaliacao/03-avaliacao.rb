# 3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada e deve retornar um array de strings para representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. Caso contrário, a função deve retornar um array vazio.
# print altura [_# , __##,]

def altura_escada(altura)
    escada = []
    if altura <= 0  
    elsif altura >= 1
        underline = altura - 1
        jogo_velha = 1

        for n in (0..altura -1)
           escada[n] = ("_" * underline) + ("#" * jogo_velha)
           underline = underline - 1
           jogo_velha = jogo_velha + 1           
        end 
    return escada
    end
    
end

 
# Ex.:
puts(altura_escada(10))
puts(altura_escada(2))
puts(altura_escada(3))
puts(altura_escada(5))
puts(altura_escada(0))
# deve imprimir nada, pois tem que retornar um array vazio