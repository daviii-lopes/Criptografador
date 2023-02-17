# Um criptografador de mensagens escrito em RUBY
# Feito por: Davi Lopes :)
# aceito pull requests par a complementar o código
require io/console

def criptografar palavra, chave # Como se pode imaginar, essa função inicia o criptografador
  alfabeto = "a b c d e f g h i j k l m n o p q r s t u v w x y z ç".split " " 
  # definindo um array com todas as letras do alfabeto
  # O metodo "split" pega todas as letras separadas por espaços e cria um array com elas 
  array = palavra.downcase.split "" # quebrando a string da mensagem a ser criptografada em um array

  for i in 0..array.size - 1 do # iniciando um laço for para percorrer todas as letra da mensagem
    alfabeto_i = alfabeto.index array[i] # pesquisa a letra dentro do array do alfabeto e retorna o seu index
    if array[i].include?(" ") == false and alfabeto_i + chave > 26 
      # verificando se é um espaço, e se a chave não pede uma letra que passa do "z"
      index = (alfabeto_i + chave) - 26 # realiza a encriptação
      array[i] = alfabeto[index] # salva o resultado na mensagem
    elsif array[i].include?(" ") == false and alfabeto_i + chave < 26 # faz a encriptação normalmente
      array[i] = alfabeto[alfabeto_i + chave] # realiza e encriptação, e salva o resultado na mensagem original
    end
    if array[i] == " " # substitui os espaços por hifens
      array[i] = "-"
    end
  end
  puts array.join #imprime o resultado :)
end
while true # aqui fica o menu 
  system "cls" # limpa o seu terminal (windows)
  system "clear" # limpa o seu terminal (linux)
  puts "<===== Criptografador de Mensagens! =====>"
  puts "<=== Escreva uma mensagem: (use \"cancelar\" para sair) ====>"
  mensagem = gets.chomp 
  if mensagem == "cancelar"
    break
  end
  puts "<=== Escreva uma chave: ====>"
  chave = gets.chomp.to_i
  criptografar mensagem, chave
end
