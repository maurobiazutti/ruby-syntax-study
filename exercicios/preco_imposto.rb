precoDoGas = gets.to_i
imposto = 0.1
impostoCobrado = gets.to_i
impostoVariavel = gets.to_f

impostoFixo = precoDoGas * imposto

precoFinal = precoDoGas + impostoFixo

if impostoCobrado > 0
  precoFinal += precoFinal * (impostoVariavel / 100.0)
  puts "O preço do gás nesse mês é de R$#{precoFinal.round(2)}"
else
  precoFinal = precoDoGas + impostoFixo
  puts "O preço do gás nesse mês é de R$#{precoFinal.to_i}"
end
