## Condicionais

# #IF
valor = 20
if valor > 50
  puts 'Valor maior que 50'
else
  puts 'Valor menor que 50'
end

valor1 = 65
puts 'Estou entre 50 e 100' if valor1 >= 50 && valor1 <= 100

valor2 = 20
if valor2 > 50
  puts 'Valor maior que 50'
elsif valor2 == 50
  puts 'Valor igual a 50'
else
  puts 'valor menor que 50'
end

valo3 = gets.chomp.to_i
puts 'Eu sou maior que 50' if valo3 > 50

puts 'digite'
valor4 = gets.chomp.to_i
if valor4 > 20
  puts 'Valor4 é maior que 20'
elsif puts 'Valor4 é menor que 20'
end

valor5 = ''
if !valor5.empty?
  puts 'Valor5 = '
else
  puts 'Nada na variavel Valor5 '
end

# #CASE
mes = 'dezembro'
case mes
when 'janeiro'
  puts 'tem 31 dias'
when 'fevereiro'
  puts 'tem 28 dias'
when 'março'
  puts 'tem 30 dias'
else
  puts 'não sei quantos dias tem esse mes'
end

## UNLESS
# Testa se é verdadeiro se for true não executa nada se for false ai executa o bloco / EXECUTA O FALSE
puts 'Digite o valor'
valor6 = gets.chomp.to_i
puts 'O valor não é 100' unless valor6 == 100

# Condicional com Ternario condicional ? true : false
valor7 = gets.chomp.to_i
#  TESTE  #           # TRUE #                 #  FALSE  #
puts valor7 > 5 ? 'Eu sou maior que 5' : 'Eu sou menor que 5'
