require './players'
require './questions'

player1 = Players.new('player1',3)
puts player1.name
player2 = Players.new('player2',3)
questions = Questions.new
questions.get_question