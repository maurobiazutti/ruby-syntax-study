# Map
list_nomes = %w[Mauro Marcos Geraldo iris]

nomes_cargo = list_nomes.map do |cargo|
  cargo + ' gerente'
end
puts nomes_cargo

numbers = [1, 2, 3, 4, 5]

numbers.map { |number| number * 2 }
# => [2, 4, 6, 8, 10]

places = [restaurant, mall, park, theater]
places_upcase = places.map { |place| place.upcase }
p places_upecase
# => ["RESTAURANT", "MALL", "PARK", "THEATER"]

# Select ->filter em outras linguagens

numbers = [1, 2, 3, 4, 5]
numbers.select { |number| number > 3 }
# => [4, 5]

# Pegar numeros Impar
odd_numbers = numbers.select do |number|
     number.odd?
    end
odd_numbers
# => [1, 3, 5]
