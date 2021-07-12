#O diâmetro de um círculo é 2x o seu raio.
def calcula_diametro(raio)
    diametro = raio * 2
    return diametro
end

diametro = calcula_diametro(5)
puts diametro

#O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
def calcula_comprimento(raio)
    comprimento = calcula_diametro(raio) * Math::PI
    return comprimento
end

comprimento = calcula_comprimento(5)
puts comprimento

#A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
 def calcula_circulo(raio)
    circulo = raio ** 2 * Math::PI 
    return circulo
end

circulo = calcula_circulo(5)
puts circulo
