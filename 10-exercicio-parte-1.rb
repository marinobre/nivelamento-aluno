# Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.

for x in (1..10)
    for y in (1..10)
        if y == 1 || x == 1 || y == 10 || x == 10 
            # print x.to_s
            print " * "
        else 
            print " x "    
        end
    end 
    puts   
end    
