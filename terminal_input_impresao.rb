# Para imprimir no terminal

# Quebra linha automaticamente
puts %w[A B C]

# Quebra linha automaticamente, inspeciona util para debug
p %w[C D E]

# Não quebra linha
print %w[F G H]

## gets() ou gets Entrada de dados| Inputs / gets.chomp para tira \n
puts 'Digite: '
digitado = gets
puts "Vc digitou #{digitado}"
