class Player
  attr_reader :name, :position_at, :win
  def initialize(a_name)
    @name = a_name
    @position_at = 0
    @win = false
  end

  def move(roll_result, portals)
    current_position = @position_at
    @position_at = (current_position + roll_result)
    # for a_portal in portals
      # if a_portal.has_key?(@position_at)
      #   @position_at = a_portal[@position_at]
      # end
      # @position_at =6
  end

  def check_winner(size_of_the_board)
    if @position_at == size_of_the_board
      then @win = true
    end
     
  end





end