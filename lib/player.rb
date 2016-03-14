class Player
  attr_accessor :ox

  def initialize(ox)
    @ox = ox
  end

  def move(board, choice, game)
    board.possible_positions[choice] = self.ox
    board.game_board
  end

  def auto_move(board, game)
    puts "-----------"
    puts "Computer is thinking"
    position = rand(1..9)
    board.possible_positions["#{position}"] = self.ox
  end
end
