def sortear_numeros(qtd, limite_inicio, limite_fim) # sortear 6 numeros; 1 a 60, que não se repete, guardar em array
    numero_sorteado = 0
    posicao = 0
    array = Array.new(qtd)
    
    while posicao < qtd
        numero_sorteado = rand(limite_inicio..limite_fim)
        if !array.include?(numero_sorteado)
            array [posicao] = numero_sorteado 
            posicao = posicao + 1
        end
    end
    
    return array
end

def obter_apostas(qtd, limite_inicio, limite_fim) # um array com numeros apostados
   return sortear_numeros(qtd, limite_inicio, limite_fim)
end

def verificar_acertos(sorteados, apostados) # numeros numeros acertados
    
    count = 0
    for index in (0.. sorteados.size-1)
        if apostados.include?(sorteados[index]) 
            count = count + 1
        end
    end   
    return count 
end

def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end
mega_sena()

