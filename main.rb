require './active_player'
require './prompt_player'
require './lives'

@active_player = Active_player.new()
@lives = Lives.new()

def start_game (active_player)
  prompt = Prompt_player.new(active_player.player)
  
  #print question
  puts prompt.question + "\n"

  #store answer from player
  prompt.player_response = gets.chomp.to_i

  #inform player if correct or incorrect
  puts prompt.answer + "\n"
  
  #Checking and setting scores
  if active_player.player == 1
    if prompt.answer == "Player 1: Seriously? No!"
      @lives.player1 -= 1
    end 
    if @lives.player1 == 0
      puts "Player 2 wins with a score of #{@lives.player2}/3" + "\n"
      puts "----- GAME OVER -----" + "\n"
      puts "Good bye!" + "\n"
      return
    end
  end
  if active_player.player == 2
    if prompt.answer == "Player 2: Seriously? No!"
      @lives.player2 -= 1
    end
    if @lives.player2 == 0
      puts "Player 2 wins with a score of #{@lives.player2}/3" + "\n"
      puts "----- GAME OVER -----" + "\n"
      puts "Good bye!" + "\n"
      return
    end
  end
  
  #print scores
  puts "P1: #{@lives.player1}/3 vs P2: #{@lives.player2}/3" + "\n"
  
  #Set what player should go next
  if active_player.player == 2
    active_player.player = 1
  elsif active_player.player == 1
    active_player.player = 2
  end
  
  puts "----- NEW TURN -----" + "\n"

  #run application again for next player
  start_game(@active_player)

end

start_game(@active_player)



