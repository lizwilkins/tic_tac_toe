require './lib/board'
require './lib/game'
require './lib/player'
require './lib/board'

players = [Player.new("Player 1"),Player.new("Player 2")]
board = Board.new
game = Game.new(board)

puts "Welcome to Tic-Tac-Toe!"

players.each do |player|
  puts "#{player.name}, please enter your name: "
  player.set_name(gets.chomp)
  puts "Please choose a mark (O or X): "
  player.set_mark(gets.chomp)
  puts "Welcome to the game, #{player.name}! Your symbol is #{player.mark}"
end

puts "Here's the starting board!"

have_a_winner = false

until board.full? || have_a_winner

  p board

  players.each do |player|
    puts "It's your turn, #{player.name}!"
    puts "Choose your row (1-3):"
    row = gets.chomp.to_i-1
    puts "Choose your column (1-3):"
    column = gets.chomp.to_i-1 
    board.mark_square(row,column,player.mark)
    if have_a_winner = game.winner(players) then break end
  end
end

puts "#{game.winner(players).name} has won the game."  