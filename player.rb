class Player
  attr_reader :name, :position_at, :win
  def initialize(a_name)
    @name = a_name
    @position_at = 0
    @win = false
  end

  def move(roll_result)
    current_position = @position_at
    @position_at = (current_position + roll_result)
  end

end