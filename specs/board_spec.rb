require("minitest/autorun")
require("minitest/rg")
require_relative("../board")
require_relative("../sladder")

class BoardTest < MiniTest::Test

  def setup

    @board = Board.new()

  end

  def test_sladders_exist
    assert(@board.sladders != nil)
  end

  def test_is_it_a_slaguar__yes
    check_tile = @board.check_tile(3)
    assert_equal( @board.sladders[0], check_tile )
  end

  def test_is_it_a_slaguar__no
    check_tile = @board.check_tile(10)
    assert_nil(check_tile)
  end
end
