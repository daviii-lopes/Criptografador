def criptografar palavra, chave
  alfabeto = "a b c d e f g h i j k l m n o p q r s t u v w x y z ç".split " " 
  array = palavra.split ""

  for i in 0..array.size - 1 do
    alfabeto_i = alfabeto.index array[i]
    array[i] = alfabeto[alfabeto_i + chave] 
  end
  puts array
end
criptografar "abcdef", 3    

