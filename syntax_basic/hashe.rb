# Hashes estrutura de Chave/Valor
dados = { nome: 'Mauro', idade: 34, peso: 90 }

# Adicionar elementos no hash
dados[:peso] = '90kg'
dados[:altura] = 1.78
dados[74] = 'Numero da casa'

# Para imprir
putus dados[:nome] # "Mauro"
putus dados[:altura] # 1.78
putus dados

# deletar item do hash
dados.delete(:altura)

# para limpar todo o hash
# dados.clear

# Para saber se tem um valor dentro do hash
puts dados.has_value?('Mauro')

# Para saber se tem a chave dentro do hash
puts dados.has_key?(:nome)

# Para pegar as chaves do hash e retorna array com as chaves
p dados.keys

# Para pegar os valores do hash e retorna um array com os valores
p dados.values

# Para saber o tamanho do hash
p dados.size

# Para saber o tamanho do hash
dados.length

# verifica se o hash esta vazio
dados.empty?
