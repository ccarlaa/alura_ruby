def welcome
    puts "Bem vindo!"
    puts "Qual é o seu nome?"
    name = gets.strip
    puts "\n\n"
    puts "Começamos o jogo para você #{name}"
    name
end

def choose_world
    puts "Escolhendo uma palavra..."
    secret_world = "programador"
    puts "Palavra secreta com #{secret_world.size} letras... boa sorte!"
    secret_world
end

def keep_playing
    puts "Deseja jogar novamente? (S/N)"
    answer = gets.strip
    answer_no = answer.upcase == "N"
end

def ask_kick(errors, kicks)
    puts "\n\n"
    puts "Erros até agora #{errors}"
    puts "Chutes até agora #{kicks}"
    puts "Entre com uma letra ou uma palavra:"
    kick = gets.strip
    kick
end

def play(name)
    secret_world = choose_world
    errors = 0
    kicks = []
    score = 0

    while errors < 5
        kick = ask_kick(errors,kicks)
        kicks << kick
    end

    puts "Você ganhou #{score} pontos"
end

name = welcome
secret_world = choose_world

loop do
    play(name)
    if keep_playing? 
        break
    end
end
