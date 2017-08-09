require_relative "player"
require_relative "board"
require_relative "die"

class Game

  attr_reader :board

  def initialize(players)
    @players = players
    @board = Board.new()
    @die = Die.new()
  end

  def remove_player(player)
    @players.delete(player)
  end

  def yield_order()
    # for player in @players do
    #    if player.turn_order_roll == 6
    #
    # end
  end

  def take_turn(player)
    die_roll = @die.roll()
    move(die_roll)

  end

  def yield_commencement()
    loop do
      for player in @players do
        take_turn(player)
        return player.name if player.has_won?()
      end
    end
  end

end
