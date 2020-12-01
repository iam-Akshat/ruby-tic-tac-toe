require_relative 'board'
require_relative 'player'

class Game
  attr_reader :game_finished, :did_someone_win, :win_message_holder

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @x_player = @player1.role == 'X' ? @player1.name.to_s : @player2.name.to_s
    @o_player = @player1.role == 'O' ? @player1.name.to_s : @player2.name.to_s
    @game_finished = @board.game_over
    @board.game_over
    @total_turns = 0
    @did_someone_win = false
    @win_message_holder = ''
  end

  def current_turn
    if @board.x_turn
      "#{@x_player}'s turn for X"
    else
      "#{@o_player}'s turn for O"
    end
  end

  def win_message(status)
    return unless status

    @win_message_holder = @board.x_turn ? "#{@o_player} won" : "#{@x_player} won"
  end

  def play(input)
    if @board.play_turn(input)
      @game_finished = @board.game_over
      @did_someone_win = @game_finished
      @total_turns += 1
      win_message(@game_finished)
      if check_draw
        @game_finished = true
        @did_someone_win = false
      end

      true
    else
      if check_draw
        @did_someone_win = false
        @game_finished = true

      end
      false
    end
  end

  private

  def check_draw
    return true if @total_turns == 9
  end
end
