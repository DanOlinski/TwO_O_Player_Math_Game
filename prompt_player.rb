#prompt player with a simple math question, check his response and inform player if response is correct or incorrect
class Prompt_player
  def initialize(active_player)
    @random_number_1 = 1 + rand(20)
    @random_number_2 = 1 + rand(20)
    @active_player = active_player

    #This is the prompt text
    @question = "Player #{active_player}: what is #{@random_number_1} plus #{@random_number_2}? "

    #This is the response from the player. This response comes from the command line and it is retreived in the main.rb file
    @player_response = nil
  end

  #setter
  def player_response
    return @player_response
  end

  #getter
  def player_response=(new_player_response)
    @player_response = new_player_response
  end 

  #setter
  def question
    @question
  end

  #generate an answer depending on players response
  def answer
    answer = "Player #{@active_player}: Seriously? No!"
       check_answer = @random_number_1 + @random_number_2
      if check_answer == @player_response
        return answer = "Player #{@active_player}: Yes! You are correct."
      end
    return answer
  end

end