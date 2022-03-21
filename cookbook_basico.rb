puts "Bem-vindo ao Cookbook, sua rede social de receitas"

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Buscar receitas"
puts "[4] Sair"
print "Escolha uma opção: "    #print serve para imprimir na tela como o puts,porém não quebra linha 
opcao = gets.to_i()       #gets quando recebe um valor transforma-o em string, então essa formula converte para inteiro

nome = ''      #criando uma variável vazia para receber um valor posteirormnte ao código
receitas = []     #criando um array

    
while(opcao != 4) do        #Laço de repetição while
    if(opcao == 1)          #Condicional if        
         puts "Digite o nome da receita: "   #O puts serve para exibir na tela um texto
        nome = gets.chomp()           #O gets recebe um valor preenchido pelo usuário
         puts "Digite o tipo da receita: "   #O puts serve para exibir na tela um texto
        tipo = gets.chomp()           #O gets recebe um valor preenchido pelo usuário

        receitas << {nome: nome, tipo: tipo}    # HASH - um array com valores relacionados
         #CÓDIGO: receitas << nome        Toda vez que for inserido valor ao nome, será atribuído ao array receitas através do <<

         puts
         puts "Receita #{nome} cadastrada com sucesso!"  #O nome está sendo interpolado ao código
         puts

    elsif(opcao == 2)

        puts "====== CARDÁPIO ======"
                                                              
        receitas.each do |receita|
             puts "#{receita[:nome]} - #{receita[:tipo]}"                                   # CÓDIGO: puts receitas     O puts ao chama um array executa como um foreach
        end
         puts                                #puts em branco para pular linha
    else
        puts "Opção Inválida"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2]  Ver todas as receitas"
    puts "[3] Buscar receitas"
    puts "[4] Sair"
    print "Escolha uma opção: "
    opcao = gets.to_i()

end


