require 'yaml'

module TicTacToe
  class Game
    attr_reader :players, :turns, :winner, :turns_left, :current_player

    def initialize
      @players = ['X', '0']
      @turns   = [Array.new(3, ' '), Array.new(3, ' '), Array.new(3, ' ')]
      @winner  = nil
      @turns_left = 9
      @current_player = 0
    end

    def turn(x, y)
      turns[x][y] = players[current_player]
    end

    def can_turn?(x, y)
      !players.include?(turns[x][y])
    end

    def has_winner?
      players.include?(winner)
    end

    def finished?
      if (has_winner? || !has_turns?)
        true
      else
        false
      end
    end

    def has_turns?
      if turns_left > 0
        true
      else
        false
      end
    end

    def print_turns
    end

    private

    def decrement_turns_left
    end

    def check
    end

    def check_set(player, a, b, c)
    end

    def next_player
    end

    def print_results
    end

    def print_already_marked_msg
      puts 'This cell already marked'
    end

    def print_game_blocked
      puts 'Game is blocked'
    end

    def print_winner
      puts "Player #{winner} is won."
    end

    def print_greeting_msg
      puts 'Welcome to game. Player X is turn first.'
    end

    def print_finished_msg
      puts 'Game already finished'
    end

    def print_already_msg
      puts 'This cell already marked'
    end

  end
end

