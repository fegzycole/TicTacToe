#!/usr/bin/env ruby

require_relative '../lib/board'
require_relative '../lib/validation'

tictactoe = Board.new
validation = Validation.new

def print_board(tictactoe)
  i = 0
  while i < tictactoe.board.size
    p tictactoe.board[i..i + 2]
    i += 3
  end
end

def player_move(player_item, validation, board)
  puts "Player #{player_item} turn"
  puts "Player #{player_item} select a number from 1 to 9"
  option_selected = gets.chomp

  until validation.check_valid_input(option_selected)
    puts 'Ensure you put in a number between 1 to 9 and make sure it hasn\'t been selected'
    option_selected = gets.chomp
  end

  board.update_board(player_item, option_selected)

  validation.update_selected_options(option_selected)

  print_board(board)
end

until tictactoe.full?
  player_move('X', validation, tictactoe)

  return puts 'Player X has won the game' if tictactoe.player_won?

  return puts 'The game has ended in a draw' if tictactoe.full?

  player_move('O', validation, tictactoe)

  return puts 'Player O has won the game' if tictactoe.player_won?
end
