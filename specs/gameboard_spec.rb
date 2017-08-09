require("minitest/autorun")
require("minitest/rg")
require_relative("../gameboard")
require_relative("../player")
require_relative("../sladder")

class GameboardTest < MiniTest::Test

  def setup

    @ladder1 = Sladder.new(3, 51)
    @ladder2 = Sladder.new(6, 27)
    @ladder3 = Sladder.new(20, 70)
    @ladder4 = Sladder.new(36, 55)
    @ladder5 = Sladder.new(63, 95)
    @ladder6 = Sladder.new(68, 98)
    @snake1 = Sladder.new(99, 69)
    @snake2 = Sladder.new(34, 1)
    @snake3 = Sladder.new(65, 52)
    @snake4 = Sladder.new(87, 57)
    @snake5 = Sladder.new(91, 61)
    @snake6 = Sladder.new(25, 25)
    @snake7 = Sladder.new(47, 19)
    @jaguar = Sladder.new(2, -1)
    @sladders = [
      @ladder1, @ladder2, @ladder3, @ladder4, @ladder5, @ladder6,
      @snake1, @snake2, @snake3, @snake4, @snake5, @snake6, @snake7, @jaguar
    ]
    @gameboard = Gameboard.new(@sladders)

  end

  def test_dice_roll
    result = @gameboard.dice_roll()
    assert_equal( true, result.between?(1, 6) )
  end

  def test_is_it_a_slaguar__yes
    check_tile = @gameboard.check_tile(3)
    assert_equal(@ladder1, check_tile)
  end

  def test_is_it_a_slaguar__no
    check_tile = @gameboard.check_tile(10)
    assert_equal(nil, check_tile)
  end

  

end
