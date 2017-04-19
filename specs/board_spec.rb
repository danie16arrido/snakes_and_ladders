require('minitest/autorun')
require('minitest/emoji')
require_relative('../board.rb')

class TestBoard < MiniTest::Test

  def setup
    @board = Board.new(2)
  end 

  def test_can_create_board
    assert_equal(Board, @board.class) 
  end

  def test_board_has_size
    assert_equal(2, @board.size)  
  end

  def Xtest_create_squares_with_size
    arr = [[nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil]]
    assert_equal(arr, @board.squares)
  end

  def test_populate_array
    board = Board.new(12)
    assert_equal(12, board.squares[5][5])
  end

  def test_add_portal
    board = Board.new(12)
    board.add_portal(3,6)
    assert_equal(6, board.squares[0][1])
  end

end