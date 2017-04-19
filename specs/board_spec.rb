require('minitest/autorun')
require('minitest/emoji')
require_relative('../board.rb')

class TestBoard < MiniTest::Test

  def setup
    @board = Board.new(12)
  end

  def test_can_create_board
    assert_equal(Board, @board.class)
  end

  def test_create_squares_array
    new_board = Board.new(2)
    assert_equal([0,1], new_board.squares)
  end

  def test_create_portals
    assert_equal([], @board.portals)
  end

  def test_add_portals_to_board
    a_portal = {2 => 6}
    @board.add_portal(a_portal)
    assert_equal([a_portal],@board.portals)

  end










end