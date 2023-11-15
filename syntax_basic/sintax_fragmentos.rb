##### ATRIBUIÇÃO CONDICIONAL DE VARIÁVEL
variavel = nil
variavel ||= 25
p variavel # 25

linguagem = 'Ruby'
linguagem ||= 'javascript'
puts linguagem # Ruby

# Range
# range = 0..5

# next sobe um nivel a ultima string ou inteiro a direita
palavra = 'ruby'
puts palavra.next # rubz

inte = 101
puts inte.next # 102

palavra = 'ruby'
indice = palavra.length
until indice.zero?
  indice -= 1
  next if indice == 1

  print palavra[indice]
end
# ybr
