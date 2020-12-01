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
