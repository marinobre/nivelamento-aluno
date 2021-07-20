# Desenhar uma pirâmide. O tamanho da base deve ser informado. 
# Se o tamanho da base for numero par, o topo terá "**", se for ímpar "*". 
# Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*" que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************


def imprime_piramede(base)
    base =  base.to_i
    topo = (base/2.to_f).ceil
    # puts topo
    base_par = 0
    if base % 2 == 0
        base_par = 1
    end

    for linha in (0..topo -1)
        for coluna in (1..base)
            if coluna >= topo - linha && coluna <= topo + linha + base_par
                print "*"
            else 
                print " "
            end
        end
        puts
    end     
end

imprime_piramede(9)
imprime_piramede(10)

