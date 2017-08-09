require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < MiniTest::Test

  def setup

    @player = Player.new("Michael", 0, false)

  end

  def test_name
    assert_equal("Michael", @player.name)
  end

  def test_position
    assert_equal(0, @player.position)
  end

  def test_ai
    assert_equal(false, @player.ai)
  end

  def test_move_player
    @player.move(10)
    assert_equal(10, @player.position)
  end

  # def test_negative_position_remove
  #   @player.move(-100)
  #   assert_equal()
  # end

end
