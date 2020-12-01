class Player
  attr_reader :name, :role

  def initialize(name, play)
    @name = name
    assign_role(play)
  end

  private

  def assign_role(play)
    @role = case play
            when 'X'
              'X'
            when 'O'
              'O'
            else
              'X'
            end
  end
end

def get_name(which_player)
  puts "Please enter Player #{which_player} name"
  name = gets.chomp.strip
  while name.empty? || /\d+$/.match?(name)
    puts 'Please enter a valid name'
    name = gets.chomp.strip
  end
  name
end
