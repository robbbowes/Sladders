require("minitest/autorun")
require("minitest/rg")
require_relative("../sladder")

class SladderTest < MiniTest::Test

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
    @snake6 = Sladder.new(25, 5)
    @snake7 = Sladder.new(47, 19)
    @jaguar = Sladder.new(2, -1)

  end

  def test_snake__yes
    assert_equal(true, @snake3.snake?)
  end

  def test_snake__no
    assert_equal(false, @ladder4.snake?)
  end

  def test_jaguar__yes
    assert_equal(true, @jaguar.jaguar?)
  end

  def test_jaguar__no
    assert_equal(false, @snake6.jaguar?)
  end

  def test_ladder__yes
    assert_equal(true, @ladder2.ladder?)
  end

  def test_ladder__no
    assert_equal(false, @snake5.ladder?)
  end

  def test_offset_positive
    assert_equal(48, @ladder1.offset)
  end

  def test_offset_negative
    assert_equal(-20, @snake6.offset)
  end

end
