#!/usr/bin/env ruby

valid_options = %w[1 2 3 4 5 6 7 8 9]
loop do
  puts "Player 1 select a number from 1 to 9"
  option_selected = gets.chomp
  break if valid_options.include? option_selected
end
# print the 
valid_options[option_selected] = "X"
puts "#{valid_options[0]} | #{valid_options[1]} | #{valid_options[2]}"
puts "---------"
puts "#{valid_options[3]} | #{valid_options[4]} | #{valid_options[5]}"
puts "---------"
puts "#{valid_options[6]} | #{valid_options[7]} | #{valid_options[8]}"

