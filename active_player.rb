#Start with player one, the app in main.rb file changes to either player1 or player2 depending on who plaid previously
class Active_player
  
  def initialize()
    @player = 1
  end

  def player
    return @player
  end

  def player=(next_player)
    @player = next_player
  end 
end