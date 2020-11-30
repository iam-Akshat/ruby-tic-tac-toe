#!/usr/bin/env ruby

### Welconme
puts ''
puts ''
puts 'Welcome to TikTakTow v1.0'
puts ''

print 'Player "X" name : '
player_x = gets.chomp
puts ''
print 'Player "O" name : ' # Player.new("name2",1)
player_o = gets.chomp
puts ''

while player_x.nil? || player_o.nil? || player_x == player_o
  print 'Please Change your names'
  puts ''
  print 'Player "X" name : '
  player_x = gets.chomp
  puts ''
  print 'Player "O" name : ' # Player.new("name2",1)
  player_o = gets.chomp
end
puts ''

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
end
