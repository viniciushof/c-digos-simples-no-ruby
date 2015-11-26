# coding: UTF-8

agenda = {Ana: "98965042", Pedro: "87878787"}

while true
	puts ''
	puts '1 - Create'
	puts '2 - Read'
	puts '3 - Update'
	puts '4 - Delete'	
	print "Escolhas entre as opções descritas: "
	escolha = gets.chomp
	puts ''

	case escolha
	when "1"
		print "Insira o nome do contato: "
		nome = gets.chomp
		if agenda[nome.to_sym].nil?
			print "Digite o telefone: "
			telefone = gets.chomp
			agenda[nome.to_sym] = telefone
		else
			puts "Valor inválido ou já existente."
		end
	
	when '2'
		puts "Digite o nome a ser atualizado"
		nome = gets.chomp
		if agenda[nome.to_sym].nil?
			puts "Nome inválido"
		else
			print "Número do telefone: "
			telefone = gets.chomp
			agenda[nome.to_sym] = telefone
		end	
	when '3'
		agenda.each do |nome, telefone|
			puts "Nome: #{nome} - Telefone #{telefone}"
		end
	when '4'
		puts "Digite o nome a ser deleteado."
		nome = gets.chomp
		if agenda[nome.to_sym].nil?
			puts "Este nome não existe."
		else
			agenda.delete(nome)
			puts "O contato #{nome} foi excluído. "
		end
	else
		puts "Dado inválido"
	end
	puts agenda
end