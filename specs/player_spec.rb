require('minitest/autorun')
require('minitest/emoji')
require_relative('../player.rb')
require_relative('../board.rb')


class TestPlayer < MiniTest::Test
  
  def setup
    @board = Board.new(12)
    @player = Player.new("John")
  end

  def test_can_create_player
    assert_equal(Player, @player.class)
  end

  def test_player_name          
    assert_equal("John",@player.name)
  end

  def test_start_position
    assert_equal(1, @player.position_at)
  end

  def test_starting_status
    assert_equal(false, @player.win)
  end

  def test_player_can_move
    @player.move(3, @board.squares)
    assert_equal(4, @player.position_at)
    @player.move(3, @board.squares)
    assert_equal(7, @player.position_at)
  end

  def test_move_to_a_portal
    @board.add_portal(3,6)
    @player.move(2, @board.squares)

    assert_equal(6, @player.position_at)
  end

end