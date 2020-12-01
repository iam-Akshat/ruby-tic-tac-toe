#!/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

def get_name(which_player)
  puts "Please enter Player #{which_player} name"
  name = gets.chomp.strip
  while name.empty? || /\d+$/.match?(name)
    puts 'Please enter a valid name'
    name = gets.chomp.strip
  end
  name
end

puts ''
puts 'Welcome to TikTakTow v1.0'
puts ''

player_x = get_name('X')
puts ''
player_o = get_name('O')
puts ''

while player_x == player_o
  puts "Both names cant be same \n Please write different name for O"
  player_o = get_name('O')
end

player_x = Player.new(player_x, 'X')
player_o = Player.new(player_o, 'O')

puts 'How to play ?'
puts ''
puts 'Type your Desired postion.'
puts ''
puts ''
puts '---------------'
puts '| |1| |2| |3| |'
puts '***************'
puts '| |4| |5| |6| |'
puts '***************'
puts '| |7| |8| |9| |'
puts '***************'
puts ''
puts ''

my_game = Game.new(player_x, player_o)

until my_game.game_finished
  puts my_game.show_board
  puts my_game.current_turn
  player_input = gets.chomp.to_i
  until my_game.play(player_input)
    puts my_game.show_board
    puts 'Choose a valid move, write a non reserved number between 1 <=> 9 '
    puts ''
    puts my_game.current_turn
    player_input = gets.chomp.to_i
  end

end

if my_game.did_someone_win
  puts my_game.win_message_holder
else
  puts ''
  puts 'Draw'
  puts ''
end
