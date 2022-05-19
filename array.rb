# Arrays

lista = ['Strings', 'Inteiros', 'Floats', 347, 7.4, 'Mouser', 'teclado', true]

# Tamanho do array
p lista.length

# Verificar se o array está vazio
p lista.empty?

# Pegar o primeiro valor
p lista.first

# Pegar o ultimo valor
p lista.last

# Para deletar iten da lista
lista.delete('teclado')

# Para add na lista
lista.push('copo', 'Cafe')

# Para add na lista
lista << 34

# Para add na lista
lista << 'Mauro'

# Para add com posição definida
lista.insert(0, 'primeiro_da_lista')

# Para organizar a lista por ordem alfabetica
# lista.sort

# Para pegar os itens da pos-2 a pos-6
p lista[2..6]
p lista

# Somatorio de lista
p list1 = %w[porco vaca macaco]
p list2 = [18, 25, 17]
list_total = list1 + list2
p list_total
