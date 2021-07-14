def fase_pandemica(taxa_vacinacao, taxa_ocupacao_leito, taxa_transmissao)  
    if taxa_vacinacao < 0.0 || taxa_vacinacao > 1.0
       return "Taxa de vacinação inválida"
    end
    if taxa_ocupacao_leito < 0.0 || taxa_ocupacao_leito > 1.0
        return "Taxa de ocupação de leitos inválida"
    end
    if taxa_transmissao < 0.0 
        return "Taxa de transmissão inválida"
    end

   
    if taxa_vacinacao > 0.8
        return "AZUL"
    elsif taxa_ocupacao_leito <= 0.5 && taxa_transmissao < 1.0
        return "VERDE"
    elsif taxa_ocupacao_leito > 0.5 && taxa_ocupacao_leito <= 0.65 && taxa_transmissao < 1.0
        return "AMARELA"
    elsif taxa_ocupacao_leito > 0.65 && taxa_ocupacao_leito <= 0.8 && taxa_transmissao < 1.0
        return "LARANJA"
    elsif taxa_ocupacao_leito > 0.8 && taxa_ocupacao_leito <= 0.9 || taxa_transmissao > 1.0
        return "VERMELHA"
    elsif taxa_ocupacao_leito > 0.9
        return "ROXO"
    end
end

puts "Para saber a fase pandemica, favor informar os valores que pede"
print "Digite a taxa de vacinação, sem % "
taxa_vacinacao = gets.to_f 
taxa_vacinacao = taxa_vacinacao / 100

print "Digite a taxa de ocupação de leitos, sem %  "
taxa_ocupacao_leito = gets.to_f 
taxa_ocupacao_leito = taxa_ocupacao_leito / 100

print "Digite a taxa de transmissão, sem % "
taxa_transmissao = gets.to_f
taxa_transmissao = taxa_transmissao / 100


resultado_fase_pandemica = fase_pandemica(taxa_vacinacao,taxa_ocupacao_leito,taxa_transmissao)
puts "Fase atual: " + resultado_fase_pandemica.to_s


#puts fase_pandemica(0.9,0.9,1.1) # cenario azul
#puts fase_pandemica(0.1,0.5,0.7) # cenario verde 
#puts fase_pandemica(0.7,0.55,0.9) # cenario amarelo
#puts fase_pandemica(0.7,0.7,0.9) # cenario laranja
#puts fase_pandemica(0.7,0.85,1.0) # cenario vermelho
#puts fase_pandemica(0.7,0.9,1.0) # cenario roxo
