#!/usr/bin/env ruby

### Welconme 
puts ""
puts ""
puts "Welcome to TikTakTow v1.0"
puts ""
print "Player \"X\" name : "
player_X = gets.chomp #Player.new("name1",0)   0=O 1=X
print "Player \"O\" name : " # Player.new("name2",1)
player_O = gets.chomp
puts ""

### instruction
puts "How to play ?"
puts "Type your Position Number in your turn."
puts ""
puts "---------------"
puts "| |1| |2| |3| |"
puts "***************"
puts "| |4| |5| |6| |"
puts "***************"
puts "| |7| |8| |9| |"
puts "***************"
puts ""

### game flow

is_game_finished = false  #Game.is_game_finished from Game class
# new_game = Game.new("player 1","player 2")
# class Game initialize(player_1,player_2)
# Game.is_game_finished=false default value
while(!is_game_finished) do 
    # current_player = Game.current_player
    print "#{player_X}\'s turn : " 
    player_ip = gets.chomp       #get player turn
    puts ""
    #show updated board
    puts "--------UPDATED BOARD-------"
    puts "---------------"
    puts "| |1| |2| |3| |"
    puts "***************"
    puts "| |4| |5| |6| |"
    puts "***************"
    puts "| |7| |8| |9| |"
    puts "***************"
    puts ""
    is_game_finished=true
    puts "checks is valid move"
    puts "Checks if someone won or draw - if draw end game"
    # Game.check_did_win
    # if(Game.check_did_win)
    #     Game.winner_message()
    # end
    puts "no one won,continue game"
    puts ""
    print "#{player_O}\'s turn : "
    player_ip = gets.chomp
    puts ""
    puts "---------------"
    puts "| |1| |2| |3| |"
    puts "***************"
    puts "| |4| |5| |6| |"
    puts "***************"
    puts "| |7| |8| |9| |"
    puts "***************"
    puts ""
    puts "checks is valid move"
    puts "Checks if someone won or draw - if draw end game"
    puts "Someone won ,stop game show win message"
    
    # Check for winner logic :
    # for x in 'a'..'c' do
    #     puts Regexp.new("((?=.*#{x})(?=.*#{x})(?=.*#{x}))")
    # end

end


