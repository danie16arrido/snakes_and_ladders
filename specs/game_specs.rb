require('minitest/autorun')
require('minitest/emoji')
require_relative('../game.rb')

class TestGame < MiniTest::Test

  def setup 
    @game = Game.new([])
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
    assert_equal([], @game.board)
  end

  def test_can_add_to_players_array
    @game.add_player("John") 
    assert_equal(1, @game.count_players)
  end














end
