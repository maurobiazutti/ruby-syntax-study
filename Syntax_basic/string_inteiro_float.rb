# Declaração de Variavel Strings
nome = 'Mauro'
nome = 'Iris'
nome = 'Geraldo' # não faz interpolação

mensagem_grande = <<~DELIMITADOR
  Um texto grande aki
DELIMITADOR
puts mensagem_grande

# \n = Nova linha
# \t = Tab
# \" = Aspas

# String | Concatenação
menssagem = "Bem Vido #{nome}"
menssagem = 'Bem Vido' + nome

# Operações com Strings
cidade = 'Santos'
p cidade[0] # S
p cidade[2] # n
p cidade[-1] # s
p cidade.chars # vai pegar dotos os caracteres e por no array
p cidade.chars.length # vai mostrar a quantidade de caracteres
p cidade[0, 3] # vai pegar de indice 0 ao 3
p cidade * 10
p '-' * 10

mensag = '     Texto com espaços      '
p mensag.strip # Tira os espaços do começo e do fim

palavra_minusculo = 'flor'
palavra_maiuscula = 'CARRO'
p palavra_minusculo.upcase # Para transfomar a palavra em MAIUSCULo
p palavra_maiuscula.downcase # Para transfomar a palavra em minusculo

mens = 'minha msn'
p mens.capitalize # Poem a primeira letra maiuscula

texto_substituir = ' Para substituir pedaço de texto por outro'
p texto_substituir.gsub('pedaço de texto', 'trecho ou palavra')

mercado = 'café pão_de_queijo leite queijo'.split # vai separar as palavras pelo espaço e criar um array
p mercado

mercado = 'café, pão_de_queijo, leite, queijo'.split(',') # vai separar as palavras pela (",") e criar um array
p mercado

# Formatar Strings
num = 34
p 'O numero é %05d' % num # "O numero é 00034"

# Numeros são declarados como Inteiro ou Float
numb = 51 # Inteiro
numb_grande = 510_000 # Inteiro separado por hífen
p numb_grande # 510000

numb_float = 51.0 # Float separado por ponto

p 10.odd? # 10 é impar?
p 10.even? # 10 é par?
