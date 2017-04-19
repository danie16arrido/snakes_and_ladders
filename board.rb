class Board

  attr_reader :size, :squares
  
  def initialize(a_size)
    @dice_numbers = 6
    @size = a_size
    @squares = Array.new(@size){Array.new(@dice_numbers)}
    populate_squares
    
  end

  def populate_squares
     counter = 2
    for i in (0...@size)
      inner = counter
      for j in (0...@dice_numbers)
        if inner > @size
          @squares[i][j] = @size 
        else
          @squares[i][j] = inner
        end
        inner += 1
      end
      counter += 1
    end
  end

  def add_portal(head, tail)
    for i in (0...@size)
      for j in (0...@dice_numbers)
        if @squares[i][j] == head
          @squares[i][j] = tail
        end
      end
    end
  end

end