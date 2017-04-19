class Player
  attr_reader :name, :position_at, :win
  def initialize(a_name)
    @name = a_name
    @position_at = 1
    @win = false
  end

  def move(roll_result, board_squares)
    @position_at = board_squares[@position_at - 1][roll_result -1]
    check_winner(board_squares)
  end

  def check_winner(size_of_the_board)
    if @position_at == size_of_the_board.size
      then @win = true
    end
     
  end

end