require 'spec_helper'
require 'bowling_kata/player'

describe Player do
  context "rolls a valid game" do
    it "accumulates the players rolls" do
      expected_rolls = []
      20.times do
        subject.roll 4
        expected_rolls << 4
      end

      expect(subject.rolls).to eq(expected_rolls)
    end
  end
end
