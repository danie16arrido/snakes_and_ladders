require('minitest/autorun')
require('minitest/emoji')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test
  
  def setup
    @player = Player.new("John")
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
    assert_equal(3, @player.position_at)
  end

  def test_














end