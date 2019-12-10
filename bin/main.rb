#!/usr/bin/env ruby

puts 'Hello world!'
# player1 = X
# player2 = O
valid_options = %w[1 2 3 4 5 6 7 8 9]
puts "Player 1 select a number from 1 to 9"
option_selected = gets.chomp
puts "run selection" unless valid_options.include? option_selected
# print the 

puts "1 | 2 | 3"
puts "---------"
puts "4 | 5 | 6"
puts "---------"
puts "7 | 8 | 9"