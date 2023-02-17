def criptografar palavra, chave
  alfabeto = "a b c d e f g h i j k l m n o p q r s t u v w x y z ç".split " " 
  array = palavra.downcase.split ""

  for i in 0..array.size - 1 do
    alfabeto_i = alfabeto.index array[i]
    if array[i].include?(" ") == false and alfabeto_i + chave > 26 
      index = (alfabeto_i + chave) - 26
      array[i] = alfabeto[index]
    elsif array[i].include?(" ") == false and alfabeto_i + chave < 26
      array[i] = alfabeto[alfabeto_i + chave]
    end
    if array[i] == " "
      array[i] = "-"
    end
  end
  puts array.join
end
while true 
  puts "<===== Criptografador de Mensagens! =====>"
  puts "<=== Escreva uma mensagem: (use \"cancelar\" para sair) ====>"
  mensagem = gets.chomp 
  if mensagem = "cancelar"
    break
  end
  puts "<=== Escreva uma chave: ====>"
  chave = gets.chomp.to_i
  criptografar mensagem, chave
end
