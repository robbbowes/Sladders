class Die

  def initialize(sides = 6)
    @sides = sides
  end

  def roll()
    return 1 + rand(@sides)
  end

end
