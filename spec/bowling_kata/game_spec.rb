require 'spec_helper'
require 'bowling_kata/game'

describe Game do
  let(:player) { double(Player) }
  subject { Game.new [player] }

  describe "#score" do
    it "is 20 after 2 standard frames" do
      rolls = [2, 4, 6, 2]
      player.stub(:rolls).and_return(rolls)
      expect(subject.score[player]).to eq(14)
    end
  end
end
