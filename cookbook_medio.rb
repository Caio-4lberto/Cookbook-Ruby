# Constantes
CADASTRAR_RECEITA = 1
VISUALIZAR_RECEITA = 2
BUSCAR_RECEITA = 3
SAIR = 4

def bem_vindo()
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
end

def menu()
    puts "[#{CADASTRAR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITA}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITA}] Buscar receitas"
    puts "[#{SAIR}] Sair"
    print "Escolha uma opção: "        #print serve para imprimir na tela como o puts porém não quebra linha 
    return gets.to_i()       #gets quando recebe um valor transforma-o em string, então essa formula converte para inteiro
end

bem_vindo()

opcao = 0
opcao = menu()

nome = ''      #criando uma variável vazia para receber um valor posteirormnte ao código
receitas = []     #criando um array

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp()           
    puts "Digite o tipo da receita: " 
    tipo = gets.chomp()        

    puts
    puts "Receita #{nome} cadastrada com sucesso!"  
    puts

    return {nome: nome, tipo: tipo}   
end

def imprimir_receitas(r) 
    puts "====== CARDÁPIO ======"

    r.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts                                #puts em branco para pular linha
end

    
while(opcao != 3) do        #Laço de repetição while
    if(opcao == 1)          #Condicional if
        
    receitas << inserir_receita()         #Método ou Função para encapsular o código
        
        # puts "Digite o nome da receita: "   #O puts serve para exibir na tela um texto
        # nome = gets.chomp()           #O gets recebe um valor preenchido pelo usuário
        # puts "Digite o tipo da receita: "   #O puts serve para exibir na tela um texto
        # tipo = gets.chomp()           #O gets recebe um valor preenchido pelo usuário
 
            # # receitas << nome    #Toda vez que for inserido valor ao nome, será atribuído ao array receitas através do <<
        
        # receitas << {nome: nome, tipo: tipo}    # HASH - um array com valores relacionados
        
        # puts
        # puts "Receita #{nome} cadastrada com sucesso!"  #O nome está sendo interpolado ao código
        # puts

    elsif(opcao == 2)
        imprimir_receitas(receitas)

        # puts "====== CARDÁPIO ======"
        # #puts receitas                       # O puts ao chamarum array executa como um foreach
        # receitas.each do |receita|
        #     puts "#{receita[:nome]} - #{receita[:tipo]}"
        #     end
        # puts                                #puts em branco para pular linha
    else
        puts "Opção Inválida"
    end

    puts "[1] Cadastrar uma receita"
    puts "[2]  Ver todas as receitas"
    puts  "[3] Sair"
    print "Escolha uma opção: "
    opcao = gets.to_i()

end


