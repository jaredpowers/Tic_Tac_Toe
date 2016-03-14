class Board

  attr_accessor :possible_positions

  Winning_combos = [[1, 2, 3], [4, 5, 6], [7, 8, 9],
                    [1, 5, 9], [3, 5, 7], [1, 4, 7],
                    [2, 5, 8], [3, 6, 9]]

  def initialize
    @possible_positions = {"1" => " ", "2" => " ",
    "3" => " ","4" => " ", "5" => " ", "6" => " ",
    "7" => " ", "8" => " ", "9" => " "}
  end




  def initial_choices
    puts ""
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
    puts ""
  end

  def game_board
    puts ""
    puts " #{self.possible_positions["1"]} | #{self.possible_positions["2"]} | #{self.possible_positions["3"]} "
    puts "-----------"
    puts " #{self.possible_positions["4"]} | #{self.possible_positions["5"]} | #{self.possible_positions["6"]} "
    puts "-----------"
    puts " #{self.possible_positions["7"]} | #{self.possible_positions["8"]} | #{self.possible_positions["9"]} "
    puts ""
  end
end
