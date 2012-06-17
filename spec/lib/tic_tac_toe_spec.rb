require 'spec_helper'

describe TicTacToe do

  describe '.new_game' do
    it "should return Game instance" do
      TicTacToe.new_game.should be_kind_of(TicTacToe::Game)
    end
  end

end
