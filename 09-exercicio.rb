# A partir da versão 2 do jogo de adivinhação, 
# faça uma nova versão em que o jogador receba a informação, 
# após chutar o número, se o chute foi maior ou menor que o número pensado. 

# A seguir, ele ganha uma nova tentativa, de modo que o jogo somente vai terminar quando ele acertar.
# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.
# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

def adivinha(chute_str, numero)
    chute_int = chute_str.to_i
    if numero == chute_int
        puts "Parabéns você acertou!"
        return true
    elsif numero != chute_int
        puts "Tente de novo" 
        return false
    end
end

def chute_valido(chute_str)
    chute_int = chute_str.to_i 
    if chute_str != "0" && chute_int == 0 
        puts "Valores inválidos" 
        return false
    elsif chute_int < 0 || chute_int > 100 
        puts "Chute inválido"
        return false
    end
    return true    
end

tentativa = 0
acertou = false

while !acertou 
    chute_str = gets.chomp
    chute_int = chute_str.to_i
    if chute_valido(chute_str) 
         
        if adivinha(chute_str,numero) 
            tentativa =  tentativa + 1
            acertou = true       
        else  
            if chute_str.to_i < numero
                puts " o numero é maior que esse "
            elsif  chute_str.to_i > numero
                puts " o numero é menor que esse "                
            end
            tentativa =  tentativa + 1       
        end
    end            
end

puts " você teve " + tentativa.to_s  + " tentativas"
