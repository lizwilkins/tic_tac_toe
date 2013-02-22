class Board
  attr_reader :squares

  def initialize
    @squares = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
  end

  def mark_square(row, column, mark)  # mark as player attr? check for validity?
    @squares[row][column] = mark
  end

  def to_s
    print "\n"
    @squares.each_with_index do |row_array, row|
      print "----------------\n"
      print "|"
      @squares.each_with_index do |column_string, column|
        print " #{@squares[row][column]} | "
      end
      print "\n"
    end
    print "----------------\n"
  end

  def full?
    @squares.each_with_index do |row_array, row|
      @squares.each_with_index do |column_string, column|
        if @squares[row][column] == ' '
          return false
        end
      end   
    end
    true
  end

end