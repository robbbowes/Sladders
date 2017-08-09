class Player

  attr_reader :name, :position, :ai

  def initialize(name, position, ai)
    @name = name
    @position = position
    @ai = ai
    # @turn_order_roll = ???
  end

  def move(offset)
    @position += offset
  end

  def has_won?
    return true if @position >= 100
    return false
  end

end
