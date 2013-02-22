require './lib/board'

board = Board.new
puts "#{board} should print empty grid"
board.mark_square(1, 1, 'X')
puts "#{board.full?} should be false."
puts "#{board} should print grid with 'X' in center"
