##### LAÇO
# Comando usados nos Laços
# break -> sair do laço
# return -> sair do laço e do método onde o laço está contido
# nest -> vai imediatamente para a proxima iteração
# redo -> repete o laço do início a condição não sera reavaliada

##### While -> Repetir enquanto for True

valor8 = 5
while valor8 >= 0
  puts valor8
  valor8 -= 1
end

valor9 = 0
while valor9 <= 10
  puts "O valor é #{valor9}"
  break if valor9 == 5

  valor9 += 1
end

##### While para percorrer em listas

list_nomes = %w[Mauro Marcos Geraldo iris]
p list_nomes.sort
contador = 0

while contador < list_nomes.size
  puts list_nomes[contador]
  puts contador
  contador += 1
end

##### UNTIL
# Until vai executar enquanto for False ou ate atingir a condição

valor10 = 0
until valor10 == 10
  puts valor10
  valor10 += 1
end

##### FOR

lista1 = [0, 1, 2, 3, 4, 5]
for meu_valor in lista1
  puts "meu valor é #{meu_valor}"
end

### For para percorrer dados do Hash

dados = { nome: 'Mauro', idade: 34, peso: 90 }

for k, v in dados do
  puts "#{k}: #{v}"
end

##### EACH (para cada)
# each com Array

lista2 = ['A', 'B', 'C', 3, 4, 5]

lista2.each do |meu_valor1|
  puts "Meu valor (usando each) é #{meu_valor1}"
end

# each com hash

dados_m = { nome: 'Mauro', idade: 34 }
dados_m.each do |chave, valor|
  puts "Minha chave é #{chave} com valor #{valor}"
end
