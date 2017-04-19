class Game
  attr_reader :players, :board

  def initialize(board)
    @players = []
    @board = board
  end

  def count_players
    return @players.count()
  end

  def add_player(new_player)
    @players << new_player
  end

end