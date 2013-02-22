require '../lib/game'
require '../lib/board'
require '../lib/player'

board = Board.new()
game = Game.new(board)
players = [Player.new("G"), Player.new("D")]
players[0].set_mark('X')
players[1].set_mark('O')
puts "#{game} should be an instance of Game."
board.mark_square(0,0,'X')
board.mark_square(0,1,'X')
board.mark_square(0,2,'X')
puts "#{game.winner(players).name} should say 'G' wins!"