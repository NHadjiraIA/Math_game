class Game
  def initialize (name)
    @name = name
    @player1 = Player.new('player 1')
    @player2 = Player.new('player 2')
  end
  def start
   ## puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}"
    turn
  end
  def turn
    @player1.new_question
    score 
    @player2.new_question
    score
    state_game
    puts '---------NEW-TURN---------'
    turn
  end   

  def score
    if @player1.is_end
      winner(@player2)
    elseif @player2.is_end
      winner(@player1)
    end  
      
  end

  def state_game
    puts "P1: #{@player1.lifes}/3 vs P2: #{@player2.lifes}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lifes}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end
end