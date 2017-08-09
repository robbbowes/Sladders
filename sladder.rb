class Sladder

  attr_reader(:start_pos, :end_pos)

  def initialize(start_pos = nil, end_pos = nil)
    @start_pos = start_pos
    @end_pos = end_pos
  end

  def snake?()
    return (start_pos > end_pos) && (end_pos != -1)
  end

  def jaguar?
    return end_pos == -1
  end

  def ladder?
    return end_pos > start_pos
  end

  def offset()
    return @end_pos - @start_pos
  end

end
