#Escreva um programa que pergunte o nome e a idade do usuário. 
#Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) 
#baseado na quantidade de dias que o usuário viveu. 
#Considere uma média de 80 batimentos por minuto. 
#Essa função deve receber a idade do usuário como parâmetro.
#Para cada parte, escreva códigos que testem os programas escritos.

def calcula_batimento_cardiaco(idade)
    media_batimentos = 80 * idade * 365 * 24 * 60
    return media_batimentos
end

print "Digite seu nome"
nome = gets.chomp
print "Digite sua idade"
idade = gets.to_i

puts calcula_batimento_cardiaco(idade)


puts nome + " seu coração já beteu " + calcula_batimento_cardiaco(idade).to_s + " vezes."