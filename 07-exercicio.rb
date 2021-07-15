# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute_str = gets.chomp
chute_int = chute_str.to_i


if chute_str != "0" && chute_int == 0 
    puts "Valores inválidos"
elsif chute_int < 0 || chute_int > 100 
    puts "Chute inválido"
elsif numero == chute_int
    puts "Acertou!"
elsif numero != chute_int
    puts "Errou!" 
end

  