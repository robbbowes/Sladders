require("minitest/autorun")
require("minitest/rg")
require_relative("../die")

class DieTest < MiniTest::Test

  def setup

    @die = Die.new()

  end

  def test_roll
    result = @die.roll()
    assert_equal( true, result.between?(1, 6) )
  end



end
