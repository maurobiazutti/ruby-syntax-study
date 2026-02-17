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


# reduce ou inject => Reduz ou acumula a lista a um unico valor.Devine um valor inicial e pode ir 
# somando, mutiplicando ou agrupando
# O 0 inicial vira o 'acumulador'. O 'p' é cada produto.
total = produtos.reduce(0) { |acumulador, p| acumulador + p[:preco] }
p total # Resultado: 6090

frutas = ["maçã", "banana", "maçã", "laranja", "banana", "maçã"]

# Conta a frequência de cada item
contagem = frutas.reduce(Hash.new(0)) do |hash, fruta|
  hash[fruta] += 1
  hash # IMPORTANTE: sempre retorne o acumulador no final do bloco
end
# => {"maçã"=>3, "banana"=>2, "laranja"=>1}


#   any? => Faz uma pergunta para a coleção: "Existe algum item que cumpre essa condição?". 
#   Devolve "true" se pelo menos um item cumprir, e "false" se nenhum cumprir.
tem_barato = produtos.any? { |p| p[:preco] < 100 }
# Resultado: true (por causa do Livro de Ruby que custa 90)


#  all? => Faz uma pergunta mais rigorosa: "Todos os itens cumprem essa condição?". 
#  Só devolve true se absolutamente todos passarem no teste.
todos_com_nome = produtos.all? { |p| p[:nome].present? }
# Resultado: true


#  group_by => Agrupa a sua lista em um formato de Hash (chave-valor), 
#  organizando os dados pelo critério que você escolher.
por_categoria = produtos.group_by { |p| p[:categoria] }
# Resultado:
# {
#   "Eletrônicos" => [{nome: "Notebook"...}, {nome: "Teclado"...}],
#   "Livros" => [{nome: "Livro de Ruby"...}],
#   "Móveis" => [{nome: "Cadeira Ergonômica"...}]
# }


# each_with_object => Ele serve para quando você quer percorrer uma lista e construir 
# um novo objeto (como um Hash, um Array ou uma String) a partir dela.

# Exemplo 1: Transformar um Array em um Hash (Frequência de palavras)
votos = ["Ruby", "Python", "Ruby", "JavaScript", "Ruby", "Python"]

contagem = votos.each_with_object(Hash.new(0)) do |voto, hash|
  hash[voto] += 1
end

puts contagem
# Resultado: {"Ruby"=>3, "Python"=>2, "JavaScript"=>1}



# Exemplo 2: Filtrar e transformar ao mesmo tempo (Criando um novo Array)
numeros = [1, 2, 3, 4, 5, 6]

resultado = numeros.each_with_object([]) do |numero, array_novo|
  if numero.even?
    array_novo << (numero ** 2)
  end
end

print resultado
# Resultado: [4, 16, 36]


# Exemplo 3: Agrupar dados de forma personalizada
pessoas = [
  { nome: "Lucas", idade: 25 },
  { nome: "Ana", idade: 16 },
  { nome: "Mariana", idade: 18 },
  { nome: "Pedro", idade: 12 }
]

# Iniciamos o objeto com um Hash que já tem as duas categorias estruturadas como arrays vazios
grupos_iniciais = { maiores: [], menores: [] }

divisao = pessoas.each_with_object(grupos_iniciais) do |pessoa, hash|
  if pessoa[:idade] >= 18
    hash[:maiores] << pessoa[:nome]
  else
    hash[:menores] << pessoa[:nome]
  end
end

puts divisao
# Resultado: {:maiores=>["Lucas", "Mariana"], :menores=>["Ana", "Pedro"]}