class Game
  def initialize players
    @players = players
  end

  def score
    scores = {}
    @players.each do |player|
      scores[player] = player.rolls.inject(&:+)
    end
    scores
  end
end
