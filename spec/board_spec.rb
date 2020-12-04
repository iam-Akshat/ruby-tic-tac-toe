require_relative '../lib/board.rb'

describe Board do
  let(:board) {Board.new}
  describe '#play_turn' do
    it 'returns false when position is >9 && <1' do
      expect(board.play_turn(10)).to eql(false)
    end
    it 'returns false when position is >9 && <1' do
      expect(board.play_turn(0)).to eql(false)
    end
  end
end