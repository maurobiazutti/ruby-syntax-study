# if __FILE__ == $0
#   = (gets.strip).to_i - 1 #declare a variavel corretamente
#
#   for elemento in 0..quantidade
#     valores = ((STDIN.gets).strip).split(" ")
#     break if valores.size != #complete o codigo
#       first, last = valores[0].to_s, valores[1].to_s
#     if (.length > 0 and .length > 0) and (.length <= 1000 and .length <= 1000) #complete o if
#       if first[(first.length - last.length).abs..(first.length - 1)] == last then puts "  " else puts "  " end  #insira as saídas corretamente
#     end
#   end
# end

##Passou
if __FILE__ == $0
  quantidade = (gets.strip).to_i - 1 #declare a variavel corretamente
  for elemento in 0..quantidade
    valores = ((STDIN.gets).strip).split(" ")
    break if valores.size != 2 #complete o codigo
    first, last = valores[0].to_s, valores[1].to_s
    if (first.length > 0 and last.length > 0) and (first.length <= 1000 and last.length <= 1000) #complete o if
      if first[(first.length - last.length).abs..(first.length - 1)] == last then puts "encaixa" else puts "nao encaixa" end  #insira as saídas corretamente
    end
  end
end
