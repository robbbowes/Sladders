class Player

  attr_reader :name, :position, :ai

  def initialize(name, position, ai)
    @name = name
    @position = position
    @ai = ai
  end

  def move(offset)
    @position += offset
  end

end
