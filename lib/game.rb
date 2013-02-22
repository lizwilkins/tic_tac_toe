class Game 
  def initialize(board)
    @board = board
  end

  # X_WINS = %w['X']
  # def 

  def winner(players)
    if (@board.squares[0][0] == @board.squares[0][1] && @board.squares[0][0] == @board.squares[0][2]) ||
       (@board.squares[1][0] == @board.squares[1][1] && @board.squares[1][0] == @board.squares[1][2]) ||
       (@board.squares[2][0] == @board.squares[2][1] && @board.squares[2][0] == @board.squares[2][2])

        if players[0].mark == @board.squares[0][0] && @board.squares[0][0] != ' ' ||
           players[0].mark == @board.squares[1][0] && @board.squares[1][0] != ' ' ||
           players[0].mark == @board.squares[2][0] && @board.squares[2][0] != ' ' 
          return players[0]
        elsif @board.squares[0][0] != ' ' || @board.squares[1][0] != ' ' || @board.squares[2][0] != ' ' 
          return players[1]
        end

    elsif (@board.squares[0][0] == @board.squares[1][0] && @board.squares[0][0] == @board.squares[2][0]) ||
          (@board.squares[0][1] == @board.squares[1][1] && @board.squares[0][1] == @board.squares[2][1]) ||
          (@board.squares[0][2] == @board.squares[1][2] && @board.squares[0][2] == @board.squares[2][2])

        if players[0].mark == @board.squares[0][0] && @board.squares[0][0] != ' ' ||
           players[0].mark == @board.squares[0][1] && @board.squares[0][1] != ' ' ||
           players[0].mark == @board.squares[0][2] && @board.squares[0][2] != ' ' 
          return players[0]
        elsif  @board.squares[0][0] != ' ' || @board.squares[0][1] != ' ' || @board.squares[0][2] != ' ' 
          return players[1]
        end

    elsif (@board.squares[0][0] == @board.squares[1][1] && @board.squares[0][0] == @board.squares[2][2]) ||
          (@board.squares[0][2] == @board.squares[1][1] && @board.squares[0][2] == @board.squares[2][2])

        if players[0].mark == @board.squares[1][1]  
          return players[0]
        elsif @board.squares[1][1] != ' '
          return players[1]
        end
    end
    return nil
  end
end
