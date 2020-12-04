require_relative '../lib/board.rb'

describe Board do
  let(:board) { Board.new }
  describe '#play_turn' do
    it 'returns false when position is >9 && <1' do
      expect(board.play_turn(10)).to eql(false)
    end
    it 'returns false when position is >9 && <1' do
      expect(board.play_turn(0)).to eql(false)
    end
    it 'returns false if position is already taken' do
      board.play_turn(1)
      board.play_turn(2)
      expect(board.play_turn(2)).to eql(false)
    end
    it 'returns true if move was accepted' do
      expect(board.play_turn(2)).to eql(true)
    end
  end
  describe '#toggle_turns' do
    it('changes turn of X or O after each move by changing x_turn') do
      prev_turn = board.x_turn
      board.play_turn(3)
      expect(board.x_turn).to_not eql(prev_turn)
    end
  end
  describe '#check_winner' do
    it 'changes game_over to true if someone wins' do
      prev_game_over = board.game_over
      board.play_turn(1)
      board.play_turn(4)
      board.play_turn(2)
      board.play_turn(5)
      board.play_turn(3)
      expect(board.game_over).to_not eql(prev_game_over)
    end
  end
end
