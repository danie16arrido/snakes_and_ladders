class Board

  attr_reader :size, :squares, :portals
  
  def initialize(a_size)
    @size = a_size
    @squares = []
    populate_squares()
    @portals = []
  end

  def populate_squares
    for i in (0...@size)
      @squares << i
    end
  end

  def add_portal(a_portal)
    @portals << a_portal
  end


  








end