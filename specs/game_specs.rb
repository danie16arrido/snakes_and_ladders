require('minitest/autorun')
require('minitest/emoji')
require_relative('../game.rb')
require_relative('../board.rb')
require_relative('../player.rb')

class TestGame < MiniTest::Test

  def setup 
    @board = Board.new(12)
    @game = Game.new(@board)
  end

  def test_can_create_game
    assert_equal(Game, @game.class)
  end

  def test_if_player_array_exists
    expected = []
    actual = @game.players
    assert_equal(expected, actual)
  end

  def test_if_board
    assert_equal(Board, @game.board.class)
  end

  def test_can_add_to_players_array
    @game.add_player("John") 
    assert_equal(1, @game.count_players)
  end

  def test_move_player
    player = Player.new("John")
    @game.add_player(player)
    a_player = @game.players[0]
    a_player.move(3, @game.board.squares)
    a_player.move(4, @game.board.squares)
    assert_equal(8, a_player.position_at)
  end

  def test_player_wins
    player = Player.new("John")
    @game.add_player(player)
    a_player = @game.players[0]
    a_player.move(6, @game.board.squares)
    a_player.move(5, @game.board.squares)
    assert_equal(true, a_player.win)
  end

  def test_player_moves_through_portal
    @game.board.add_portal(3, 9)
    player = Player.new("John")
    @game.add_player(player)
    a_player = @game.players[0]
    a_player.move(2, @game.board.squares)
    assert_equal(9, a_player.position_at)
  end

end
