# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40

puts "MMC"

print "Digite um número inteiro: "
numero_recebido_a = gets.chomp.to_i

print "Digite outro número inteiro: "
numero_recebido_b = gets.chomp.to_i

def eh_primo(numero)
    for n in (2..numero-1) #  numero par
        if numero % n == 0 # resto da divisão
            return false
        end
    end
    return true
end

def prox_primo(numero_primo)
    numero_primo = numero_primo + 1
    while !eh_primo (numero_primo)
        numero_primo = numero_primo + 1
    end
    return numero_primo
end

def calcula_mmc(numero_recebido_a, numero_recebido_b)
    primo = 2 
    total = 1
    while numero_recebido_a + numero_recebido_b != 2
        if numero_recebido_a %  primo == 0 && numero_recebido_b %  primo == 0
            numero_recebido_a = numero_recebido_a / primo 
            numero_recebido_b = numero_recebido_b / primo
            total = total * primo
            
        elsif numero_recebido_a %  primo == 0
            numero_recebido_a = numero_recebido_a / primo 
            total = total * primo
           
        elsif numero_recebido_b %  primo == 0
            numero_recebido_b = numero_recebido_b / primo 
            total = total * primo
            
        else 
            primo = prox_primo(primo)
            
        end
        
    end
    return total 
end

puts calcula_mmc(numero_recebido_a,numero_recebido_b)