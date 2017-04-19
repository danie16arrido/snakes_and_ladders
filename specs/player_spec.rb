require('minitest/autorun')
require('minitest/emoji')
require_relative('../player.rb')
require_relative('../board.rb')


class TestPlayer < MiniTest::Test
  
  def setup
    @board = Board.new(12)
    @player = Player.new("John", @board.portals)
  end

  def test_can_create_player
    assert_equal(Player, @player.class)
  end

  def test_player_name          
    assert_equal("John",@player.name)
  end

  def test_start_position
    assert_equal(0, @player.position_at)
  end

  def test_starting_status
    assert_equal(false, @player.win)
  end

  def test_player_can_move
    @player.move(3)
    @player.move(5)
    assert_equal(8, @player.position_at)
  end

  def test_winner
    @player.move(12) 
    @player.check_winner(@board.size)
    actual = @player.win
    expected = true
    assert_equal(expected, actual)
  end

  def test_ladder_move
    @player.move(2, @board.portals)

    assert_equal(6, @player.position_at)
  end












end