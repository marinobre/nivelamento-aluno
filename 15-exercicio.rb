OUROS = "\u2666".encode('utf-8')
ESPADAS = "\u2660".encode('utf-8')
COPAS = "\u2665".encode('utf-8')
PAUS = "\u2663".encode('utf-8')
baralho = [
    "A"+OUROS, "A"+ESPADAS, "A"+COPAS, "A"+PAUS,
    "2"+OUROS, "2"+ESPADAS, "2"+COPAS, "2"+PAUS,
    "3"+OUROS, "3"+ESPADAS, "3"+COPAS, "3"+PAUS,
    "4"+OUROS, "4"+ESPADAS, "4"+COPAS, "4"+PAUS,
    "5"+OUROS, "5"+ESPADAS, "5"+COPAS, "5"+PAUS,
    "6"+OUROS, "6"+ESPADAS, "6"+COPAS, "6"+PAUS,
    "7"+OUROS, "7"+ESPADAS, "7"+COPAS, "7"+PAUS,
    "8"+OUROS, "8"+ESPADAS, "8"+COPAS, "8"+PAUS,
    "9"+OUROS, "9"+ESPADAS, "9"+COPAS, "9"+PAUS,
    "10"+OUROS, "10"+ESPADAS, "10"+COPAS, "10"+PAUS,
    "J"+OUROS, "J"+ESPADAS, "J"+COPAS, "J"+PAUS,
    "Q"+OUROS, "Q"+ESPADAS, "Q"+COPAS, "Q"+PAUS,
    "K"+OUROS, "K"+ESPADAS, "K"+COPAS, "K"+PAUS
]

def exibe_array(array)
    for i in (0..array.size-1)
        print(array[i])
        if i < array.size-1
            print(", ")
        end        
    end
    print("\n")
end

def embaralhador(baralho)
    qtd = baralho.size
    cartas_embaralhadas = Array.new(qtd)
    carta_sorteada = 0
    posicao = 0
    while posicao < qtd
       carta_sorteada = rand(0..qtd)
        if !cartas_embaralhadas.include?(baralho[carta_sorteada])
                cartas_embaralhadas[posicao] = baralho[carta_sorteada]
                posicao = posicao + 1 
        end
    end

    return cartas_embaralhadas

    # implemente o algoritmo desta função
    # a função deve retornar um array com o "baralho" embaralhado
    # OBS.: Usar somente funções "raiz" de manipulação de arrays!
end

puts "Baralho ANTES:"
exibe_array(baralho)
puts "Baralho DEPOIS:"
exibe_array(embaralhador(baralho))