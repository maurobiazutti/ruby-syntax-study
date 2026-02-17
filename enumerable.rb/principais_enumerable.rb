# Lista de compras
produtos = [
  { nome: "Notebook", preco: 4500, categoria: "Eletrônicos" },
  { nome: "Teclado", preco: 300, categoria: "Eletrônicos" },
  { nome: "Livro de Ruby", preco: 90, categoria: "Livros" },
  { nome: "Cadeira Ergonômica", preco: 1200, categoria: "Móveis" }
]

#  each => Passa por cada item da lista para executar uma ação.
produtos.each do |produto|
  # puts "#{produto[:nome]}, custa R$ #{produto[:preco]}"
end


#  map ou collect => São iguais. Passa por cada item, aplica uma regra e devolve uma nova lista.
nomes = produtos.map { |p| p[:nome]}
# puts nomes


# select ou filter => São iguais. Interam sobre uma coleção e retornão un novo array contendo apenas os elementos que atendem a condição.
preco_maior_1000 = produtos.select {|p| p[:preco] > 1000}

# p preco_maior_1000
preco_maior_1000.each do |p|
  # puts "Preços maiores que 1000: Nome #{p[:nome]} Preço #{p[:preco]}"
end


#  reject => É oposto ao select retorna o false
preco_menor_1000 = produtos.reject {|p| p[:preco] > 1000}

# p preco_menor_1000
preco_menor_1000.each do |p|
  # puts "Preços menores que 1000: Nome #{p[:nome]} Preço #{p[:preco]}"
end


#  find ou detect => São igais. Eles varem a lista e devolve apenas o primeiro elemento que 
#  encontrarem que atenda a condição. Se não encontrar devolve nil
livro = produtos.find {|p| p[:categoria] == "Eletrônicos"}
# p livro