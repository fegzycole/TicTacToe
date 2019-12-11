# frozen_string_literal: true

class Board
  def initialize
    @board = %w[
      _ _ _
      _ _ _
      _ _ _
    ]
    @winning_combinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
  end

  def update_board(item, position)
    @board[position] = item
  end

  def check_winning_combination
    @winning_combinations.each do |array|
      first = array[0]
      second = array[1]
      third = array[2]
      return true if @board[first] == @board[second] && @board[first] == @board[third] && @board[first] != '_'
    end
  end
end
