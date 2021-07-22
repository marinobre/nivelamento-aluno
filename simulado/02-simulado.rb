# Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve 
# retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos

def negativos_positivos(numeros)
    # puts "numeros.size = " + numeros.size.to_s
    positivos = 0.0 # em float
    negativos = 0.0
    zeros = 0.0 
    
    for index in (0..numeros.size-1)
        if numeros[index] > 0
            positivos = positivos + 1
        elsif numeros[index] < 0
           negativos = negativos + 1
        else
            zeros = zeros + 1
        end    
    end

    novo_array = []
    novo_array[0] = positivos/ numeros.size
    novo_array[1] = zeros/ numeros.size
    novo_array[2] = negativos/ numeros.size
    return novo_array     
    
end

print negativos_positivos([-1, 2, 0, 0, 1, 2])
print("\n")

print(negativos_positivos([1, 2, 0, -1]))
print("\n")
# deve imprimir o array [0.5, 0.25, 0.25]
# pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos
