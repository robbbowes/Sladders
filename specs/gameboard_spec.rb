require("minitest/autorun")
require("minitest/rg")
require_relative("../gameboard")
require_relative("../player")

class GameboardTest < MiniTest::Test

  def setup

    @gameboard = Gameboard.new()

  end


  def test_dice_roll
    result = @gameboard.dice_roll()
    assert_equal( true, result.between?(1, 6) )
  end

end
