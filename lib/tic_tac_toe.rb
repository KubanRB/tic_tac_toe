require "tic_tac_toe/version"
require "tic_tac_toe/game"

module TicTacToe
  def self.new_game
    Game.new
  end
end
