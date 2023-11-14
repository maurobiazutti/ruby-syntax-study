# MÉTODO

def soma1(a, b)
  a + b
end

# O Ruby sempre retorna a ultima linha do método
def soma2(aaa, bbb)
  aaa + bbb
end
puts 'Execução do método'
puts soma2(3, 4)

# Caso não receba um dos parametro tenho que por um valor padrão (valor2 = 0)
def soma3(valor1, valor2 = 0)
  valor1 + valor2
end
puts soma3(10)

# Parametros nomeados
def soma_parametros_nomeados(valor_a:, valor_b:)
  valor_a + valor_b
end
puts "Resultado = #{soma_parametros_nomeados(valor_b: 10, valor_a: 20)}"

## Descobrir se a palavra é palindromo #####
## Verificando se as letras de uma palavra são iguais de traz para frente. ex: OVO

# Desenvolvendo a Logica
def palindromo1?(palavra)
  palavra = palavra.downcase
  palavra_reversa = ''
  indice = palavra.length
  until indice.zero?
    letra = palavra[indice - 1]
    palavra_reversa << letra
    indice -= 1
  end
  palavra_reversa == palavra
end
puts palindromo1?('ovo')
puts palindromo1?('Ovo')
puts palindromo1?('foo')

### Fazendo a mesma verificação usando Sintax Ruby
def palindromo?(palavra)
  palavra.downcase == palavra.downcase.reverse
end
puts palindromo?('ovo')
puts palindromo?('Ovo')
puts palindromo?('foo')
