#!/usr/bin/env ruby

# Array of valid positions that a player can take
valid_options = %w[1 2 3 4 5 6 7 8 9]
selected_positions = []

loop do
  puts 'Player 1 select a number from 1 to 9' # prompts player X to pick a position
  option_selected = gets.chomp # player X enters his/her input
  break if valid_options.include?(option_selected) && !selected_positions.include?(option_selected)
  # we check to see if the input supplied is among the valid options
  # If it isn't, we continue with the loop
end

puts "The board has now been updated, player X played at position #{option_selected}"

# update the selected positions array with the option selected
selected_positions.push(option_selected)

# display the updated board
puts 'The board is displayed'

# We check to see if player x has won































# # print the 
# valid_options[option_selected] = "X"
# puts "#{valid_options[0]} | #{valid_options[1]} | #{valid_options[2]}"
# puts "---------"
# puts "#{valid_options[3]} | #{valid_options[4]} | #{valid_options[5]}"
# puts "---------"
# puts "#{valid_options[6]} | #{valid_options[7]} | #{valid_options[8]}"
