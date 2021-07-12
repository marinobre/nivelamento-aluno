decada = 10
idade = 36
dias = 365
horas = 24
minutos = 60
segundos = 60

#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função
def calcula_hora_ano(dias, horas)
hora_ano = dias * horas
return hora_ano
end

hora_ano = calcula_hora_ano(dias,horas)
puts hora_ano

#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função
def calcula_minuto_decada(decada, dias, horas, minutos)
    minuto_decada = decada * dias * horas * minutos
    return minuto_decada
end

minuto_decada = calcula_minuto_decada(decada,dias,horas,minutos)
puts minuto_decada

#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função
def calcula_idade_segundo(idade, dias, horas, minutos, segundos)
    idade_segundo = idade * dias * horas * minutos * segundos
    return idade_segundo
end

idade_segundo = calcula_idade_segundo(idade,dias,horas,minutos,segundos)
puts idade_segundo

#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função
def calcula_idade_ano(idade_segundo,dias,horas,minutos,segundos)
    idade_ano = idade_segundo/dias/horas/minutos/segundos
    return idade_ano
end

idade_ano = calcula_idade_ano(idade_segundo,dias,horas,minutos,segundos)
puts idade_ano