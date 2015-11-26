new_game = "s"
while new_game == "s"
	words = %w{dog cat flipper snake lion}
	words_random = words.sample
	words_lenght = words_random.size
	puts "Adivinhe a palavra que estou pensando?"

	words_partial = []
	words_lenght.times do
		words_partial << " _ "
	end
	puts words_partial.join

	end_game = false

	while end_game == false
		puts "Digite uma letra"
		letter = gets.chomp
		l_initial = 0
		words_random.each_char do |l|
			if words_partial[l_initial] == ' _ '
				if l == letter
					words_partial[l_initial] = letter
				end
			end
			l_initial += 1
		end
		if words_partial.join.count(" _ ") > 0
			end_game = false
			puts words_partial.join
		else
			end_game = true
		end
		puts "Você finalizou o jogo a palavra correta era #{words_partial.join}"
	end
	puts "Deseja jogar novamente? [s/n]?"
	new_game = gets.chomp
end
endputs "Até a próxima"