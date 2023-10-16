def tema()
  puts ("[1]-Jogos")
  puts ("[2]-Comidas")
  puts ("[3]-Cores")
  puts ("[4]-Paises")
end

def itens()
  puts ("[1]-Inserir uma Letra")
  puts ("[2]-Falar a Palavra")
end

#Fazendo os Arrays para os Devidos temas do Jogo
jogos = ["Bully", "Gta", "CyberPunk", "Persona", "The Witcher"]
comidas = ["Macarrao", "Feijoada", "Cuscuz", "Bolo Chocolate", "Arroz Doce"]
cores = ["Branco", "Marrom", "Laranja", "Verde", "Azul"]
paises = ["Brasil", "Japao", "Suica", "Noruega", "Liechtenstein"]

#Criando Variaveis para Sortear o Valor de tal Tema
jogosSorteado = jogos.sample.downcase
comidasSorteada = comidas.sample.downcase
coresSorteada = cores.sample.downcase
paisesSorteados = paises.sample.downcase

#Declarando uma Variavel Importante
vidas = 5
letrasDigitadas = []

#Mostrando os themas disponiveis para o Jogo
tema()
puts ("Qual tema Deseja: ")
temaEscolhido = gets.chomp.to_i

#Iniciando o Loop
while (vidas != 0)
  case temaEscolhido
  when 1
    puts ("O tema é JOGO")
    itens()
    puts ("Digite oque Deseja: ")
    entradaDados = gets.chomp.to_i
    case entradaDados
    when 1
      puts ("Digite uma Letra:")
      letraJogo = gets.chomp
      letrasDigitadas << letraJogo
      digitada = letrasDigitadas.join("-")
      puts ("Letras ja Digitadas --> #{letrasDigitadas.join(', ')}")
      if (jogosSorteado.downcase.include?(letraJogo))
        puts ("A Palavra tem #{letraJogo}")
      else
        puts ("A Palavra não tem a Letra #{letraJogo}")
        vidas = vidas - 1
        puts ("#{vidas} Vidas restantes")
      end
    when 2
      puts ("Digite a Palavra que você acha: ")
      palavraJogo = gets.chomp
      if (palavraJogo != jogosSorteado)
        puts ("Você perdeu a Palavra era #{jogosSorteado}")
        break
      end
    end
  when 2
    puts ("O tema é Comidas")
    itens()
    puts ("Digite oque Deseja: ")
    entradaDados = gets.chomp.to_i
    case entradaDados
    when 1
      puts ("Digite uma Letra:")
      letraComida = gets.chomp
      letrasDigitadas << letraComida
      digitada = letrasDigitadas.join("-")
      puts ("Letras ja Digitadas --> #{letrasDigitadas.join(', ')}")
      if (comidasSorteada.downcase.include?(letraComida))
        puts ("A Palavra tem #{letraComida}")
      else
        puts ("A Palavra não tem a Letra #{letraComida}")
        vidas = vidas - 1
        puts ("#{vidas} Vidas restantes")
      end
    when 2
      puts ("Digite a Palavra que você acha: ")
      palavraComida = gets.chomp
      if (palavraComida != comidasSorteada)
        puts ("Você perdeu a Palavra era #{jogosSorteado}")
        break
      end
    end
  when 3
    puts ("O tema é CORES")
    itens()
    puts ("Digite oque Deseja: ")
    entradaDados = gets.chomp.to_i
    case entradaDados
    when 1
      puts ("Digite uma Letra:")
      letraCor = gets.chomp
      letrasDigitadas << letraCor
      digitada = letrasDigitadas.join("-")
      puts ("Letras ja Digitadas --> #{letrasDigitadas.join(', ')}")
      if (coresSorteada.downcase.include?(letraCor))
        puts ("A Palavra tem #{letraCor}")
      else
        puts ("A Palavra não tem a Letra #{letraCor}")
        vidas = vidas - 1
        puts ("#{vidas} Vidas restantes")
      end
    when 2
      puts ("Digite a Palavra que você acha: ")
      palavraCor = gets.chomp
      if (palavraCor != coresSorteada)
        puts ("Você perdeu a Palavra era #{coresSorteada}")
        break
      end
    end
  when 4
    puts ("O tema é PAISES")
    itens()
    puts ("Digite oque Deseja: ")
    entradaDados = gets.chomp.to_i
    case entradaDados
    when 1
      puts ("Digite uma Letra:")
      letraPais = gets.chomp
      letrasDigitadas << letraPais
      digitada = letrasDigitadas.join("-")
      puts ("Letras ja Digitadas --> #{letrasDigitadas.join(', ')}")
      if (paisesSorteados.downcase.include?(letraPais))
        puts ("A Palavra tem #{letraPais}")
      else
        puts ("A Palavra não tem a Letra #{letraPais}")
        vidas = vidas - 1
        puts ("#{vidas} Vidas restantes")
      end
    when 2
      puts ("Digite a Palavra que você acha: ")
      palavraPais = gets.chomp
      if (palavraPais != paisesSorteados)
        puts ("Você perdeu a Palavra era #{paisesSorteados}")
        break
      end
    end
  else
    puts ("Tema Inválido !!!")
  end
end
