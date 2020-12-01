#!/usr/bin/env ruby

def get_name(which_player)
  puts "Please enter Player #{which_player} name"
  name = gets.chomp.strip
  while name.empty?
    puts 'Please enter a valid name'
    name = gets.chomp.strip
  end
  name
end

### Welconme
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

### instruction
puts 'How to play ?'
puts 'Type your Position Number in your turn.'
puts ''
puts '---------------'
puts '| |1| |2| |3| |'
puts '***************'
puts '| |4| |5| |6| |'
puts '***************'
puts '| |7| |8| |9| |'
puts '***************'
puts ''

### game flow
is_game_finished = false

until is_game_finished

  print "#{player_x}\'s turn : "
  player_ip = gets.chomp # get player turn
  puts "#{player_x} plays #{player_ip}"
  puts ''
  # show updated board
  puts '--------UPDATED BOARD-------'
  puts '---------------'
  puts '| |1| |2| |3| |'
  puts '***************'
  puts '| |4| |5| |6| |'
  puts '***************'
  puts '| |7| |8| |9| |'
  puts '***************'
  puts ''
  puts 'checks is valid move'
  puts 'Checks if someone won or draw - if draw end game'

  # Game.check_did_win
  puts 'no one won,continue game'
  puts ''
  print "#{player_o}\'s turn : "
  player_ip = gets.chomp
  puts "#{player_o} plays #{player_ip}"
  puts ''
  puts '---------------'
  puts '| |1| |2| |3| |'
  puts '***************'
  puts '| |4| |5| |6| |'
  puts '***************'
  puts '| |7| |8| |9| |'
  puts '***************'
  puts ''
  puts 'checks is valid move'
  puts 'Checks if someone won or draw - if draw end game'
  puts 'Someone won ,stop game show win message'
  is_game_finished = true
end
