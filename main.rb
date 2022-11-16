require "./player"
require "./question"
require "./game"

print "Enter Player 1 name: "
name1 = $stdin.gets.chomp
print "Enter Player 2 name: "
name2 = $stdin.gets.chomp
player1 = Player.new(name1)
player2 = Player.new(name2)



game=Game.new(player1,player2)

while player1.lives>0 and player2.lives>0 do
  newQuestion=Question.new
  puts "----- New Turn-----"
  question=newQuestion.generate_question
  puts "#{game.currentPlayer.name}: #{question}"

  if $stdin.gets.chomp.to_i!=newQuestion.answer
    game.currentPlayer.lives-=1
  
    if game.currentPlayer.lives==0
      game.changePlayer
      puts "#{game.currentPlayer.name} wins with a score of #{game.currentPlayer.lives}/3"
      puts "----- GAME OVER-----"
      puts "Good bye!"
    else 
      game.score
      game.changePlayer
    end
  else 
    game.score
    game.changePlayer
  end
end