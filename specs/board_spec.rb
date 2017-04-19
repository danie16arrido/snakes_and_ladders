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













end