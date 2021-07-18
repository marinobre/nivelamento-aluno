# Esse aqui é um desafio. Faça um código para obter esse resultado:
#     *
#     **
#     ***
#     ****
#     *****
#     ******
#     *******
#     ********
#     *********
#     **********
##########################################################################################################
#  x =  colunas   
#  y = linhas

for x in (1..10)
    print "*"
    for y in (1..10)
        # if x == 1 && y <= 1 || x == 2 && y <= 2 ||x == 3 && y <= 3 || x == 4 && y <= 4 || x == 5 && y <= 5 || x == 6 && y <= 6 || x == 7 && y <= 7 || x == 8 && y <= 8 || x == 9 && y <= 9 || x == 10 && y <= 10
        # print x.to_s
        if y - x != 0 && y < x
        print "*"  
        end
    end 
     puts
end
