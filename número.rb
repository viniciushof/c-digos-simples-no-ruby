novo_jogo = "s"
while novo_jogo == "s"
	puts "Jogo de adivinhação."
	puts "Adivinhe o número que estou pensando. Dica é um número natural entre 1 e 100."
	numero_digitado = gets.to_i
	numero_sorteado = Random.rand(99)+1
	numero_tentativas = 1
	puts numero_digitado
	puts numero_sorteado


	while numero_sorteado != numero_digitado
		if numero_sorteado > numero_digitado
			puts "O número é maior que #{numero_digitado}"
		else
			puts "O número é menor que #{numero_digitado}"
		end
		numero_tentativas += 1
		puts "Tente novamente"
		numero_digitado = gets.to_i
	end
	puts "Parabéns, acertou o número é #{numero_sorteado}, com #{numero_tentativas} tentativas"
	puts "Deseja jogar novamente: Sim ou não?"
	novo_jogo = gets.chomp
end
puts "Volte sempre!"