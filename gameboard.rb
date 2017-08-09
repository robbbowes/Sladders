class Gameboard

  # attr_reader

  def initialize(sladders)
    @sladders = sladders
  end

  def dice_roll
    return 1 + rand(6)
  end

  def check_tile(tile)
    for sladder in @sladders do
      return sladder if sladder.mouth == tile
    end
    return nil
  end

end
