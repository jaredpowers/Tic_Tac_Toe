require_relative "../lib/board.rb"
require_relative "../lib/player.rb"

  class Game
    def start(player_x, cpu_player, board)
      puts "Welcome to tic tac toe"
      puts "The order is left to right, top to bottom, in descending order 1-9"
      current_player = player_x
      (1..9).each do
        if current_player == player_x
          play(current_player, board)
          current_player = cpu_player
        else
          play(current_player, board)
          current_player = player_x
        end
      end

    end

    def play(current_player, board)
      if current_player.ox == "X"
        puts ""
        print "-----------"
        print "Where do you want to move?"
        choice = gets.chomp
        current_player.move(board, choice, self)
      else
        current_player.ox == "O"
        current_player.auto_move(board, self)
      end
    end
  end





game = Game.new
player_x = Player.new("X")
cpu_player = Player.new("O")
board = Board.new
board.initial_choices

game.start(player_x, cpu_player, board)
