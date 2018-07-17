class Player
  attr_accessor :name, :score

  def initialize (playerName)
    @name = playerName
    @score = 3
  end

  def lost_turn
    @score -= 1
  end

end