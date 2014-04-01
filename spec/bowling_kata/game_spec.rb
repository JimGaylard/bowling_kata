require 'spec_helper'
require 'bowling_kata/game'

describe Game do
  let(:player) { double(Player) }
  subject { Game.new [player] }

  describe "#score" do
    context "no special rolls" do
      it "is 20 after 2 standard frames" do
        rolls = [2, 4, 6, 2]
        player.stub(:rolls).and_return(rolls)
        expect(subject.score[player]).to eq(14)
      end
    end

    context "with a spare" do
      it "adds the doubles the next roll" do
        rolls = [2, 8, 3, 4]
        player.stub(:rolls).and_return(rolls)
        expect(subject.score[player]).to eq(10+3+7)
      end
    end
  end
end
