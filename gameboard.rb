class Gameboard

  # attr_reader

  def initialize(argument)
    @argument = argument
  end

  def dice_roll
    return 1 + rand(6)
  end

end
