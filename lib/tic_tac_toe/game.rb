require 'yaml'

module TicTacToe
  class Game
    attr_reader :players, :turns, :winner, :turns_left, :current_player

    def initialize
      @players = []
      @turns   = [[], [], []]
      @winner  = ''
      @turns_left = 0
      @current_player = ''
    end

    def turn(x, y)
    end

    def can_turn?(x, y)
    end

    def has_winner?
    end

    def finished?
    end

    def has_turns?
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

