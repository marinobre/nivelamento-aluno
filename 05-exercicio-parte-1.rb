#O diâmetro de um círculo é 2x o seu raio.

def calcula_diametro(raio)
    return raio * 2
end

print "Digite o raio"
raio = gets
raio = raio.to_f

puts calcula_diametro(raio)

#O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
def calcula_comprimento(raio)
    comprimento = calcula_diametro(raio) * Math::PI
    return comprimento
end


puts calcula_comprimento(raio).round(2)

#A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
def calcula_area(raio)
    area = raio ** 2 * Math::PI 
    return area
end

puts calcula_area(raio).round(2)

