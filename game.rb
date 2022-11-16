require "./player"
class Game 
  attr_accessor :currentPlayer
  def initialize (player1, player2)
    @player1=player1
    @player2=player2
    @currentPlayer=player1
  end

  def changePlayer
    if @currentPlayer==@player1
      @currentPlayer=@player2
    else 
      @currentPlayer=@player1
    end
  end

  def score
    puts "#{@player1.name}: #{@player1.lives} vs #{@player2.name}: #{@player2.lives}"
  end
end


