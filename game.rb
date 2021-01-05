require './players'
require './questions'

class Game

  def initialize
    @player1 = Players.new('player1',3)
    @player2 = Players.new('player2',3)
    @current_player = @player2
    @questions = Questions.new
    self.start
  end

  def start
    while(game_over(@current_player))
      if(@current_player == @player1)
        @current_player = @player2
      else
        @current_player = @player1
      end
       puts "#{@current_player.name}: #{@questions.get_question}"
       answer = gets.chomp.to_i
       self.verify_answer(answer)
       puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
       
    end
  end
 
  def verify_answer(answer)
    if answer != @questions.get_answer 
      puts "#{@current_player.name}: Seriously? No!"
      @current_player.loseLife
    else 
      puts "#{@current_player.name}: Yes! you are correct."
    end
  end
  
  def game_over(player)
    if @player1.life == 0
      puts "#{@player2.name} wins with a score of #{@player2.life}/3"
      false
    elsif @player2.life == 0
      puts "#{@player1.name} wins with a score of #{@player1.life}/3"
      false
    else 
      true
    end

  end

end




 