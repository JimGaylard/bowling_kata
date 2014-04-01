class Player
  attr_accessor :rolls

  def initialize
    @rolls = []
  end

  def roll pins
    rolls.push(pins)
  end
end
