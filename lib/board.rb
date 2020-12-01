class Board
  attr_reader :board, :x_turn, :game_over

  def initialize()
    @board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @x_turn = true
    @game_over = false
    @player_x_turns = []
    @player_o_turns = []
  end

  def play_turn(pos)
    return false unless vaild?(pos)

    # puts "check 1"
    coords = pos_to_coords(pos)
    return false if taken?(coords)

    if @x_turn
      set_turn(coords, 'X')
      @player_x_turns.push(pos)
      # p @player_x_turns
      check_winner(@player_x_turns)
    else
      set_turn(coords, 'O')
      @player_o_turns.push(pos)
      # p @player_o_turns
      check_winner(@player_o_turns)
    end

    toggle_turn
    print_board
    true
  end

  private

  def toggle_turn
    @x_turn = !@x_turn
  end

  def print_board
    puts ''
    puts '_Current Board_'
    @board.each do |x|
      puts "| |#{x[0]}| |#{x[1]}| |#{x[2]}| |"
      puts '***************'
    end
    puts ''
  end

  def vaild?(num)
    num < 10 && num.positive?
  end

  def taken?(coord)
    ele = @board[coord[0]][coord[1]]
    # puts ele.inspect
    return true if ele.is_a?(String)

    false
  end

  def pos_to_coords(num)
    if num < 4
      [0, num - 1]
    elsif num < 7
      [1, num - 3 - 1]
    elsif num < 10
      [2, num - 6 - 1]
    end
  end

  def check_winner(turn)
    winning_pos = %w[123 147 159 357 369 258 789 456]

    winning_pos.each do |x|
      winn_reg = Regexp.new("((?=.*#{x[0]})(?=.*#{x[1]})(?=.*#{x[2]}))")
      if winn_reg.match?(turn.join) == true
        @game_over = true
        return true
      end
    end
    false
  end

  # sets 'X' or 'O' in desired board location
  def set_turn(coords, role)
    @board[coords[0]][coords[1]] = role
  end
end
