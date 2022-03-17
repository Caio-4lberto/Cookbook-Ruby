puts "Bem-vindo ao Cookbook, sua rede social de receitas"

nome = ''      #criando uma variável vazia para receber um valor posteirormnte ao código
receitas = []     #criando um array

puts "Digite o nome da receita: "   #O puts serve para exibir na tela um texto
nome = gets.chomp()           #O gets recebe um valor preenchido pelo usuário

receitas << nome    #Toda vez que for inserido valor ao nome, será atribuído ao array receitas através do <<

puts "Receita #{nome} cadastrada com sucesso!"  #O nome está sendo interpolado ao código