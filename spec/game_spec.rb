require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  let(:player1) { Player.new('name1', 'X') }
  let(:player2) { Player.new('name2', 'O') }
  let(:new_game) { Game.new(player1, player2) }

  describe '#play' do
    it 'does not set change #game_finished unless somewon or draw' do
      prev_game_finished = new_game.game_finished
      new_game.play(2)
      expect(new_game.game_finished).to eql(prev_game_finished)
    end
    it 'sets value of #game_finished to true when someone wins' do
      new_game.play(1)
      new_game.play(4)
      new_game.play(2)
      new_game.play(5)
      new_game.play(3)
      expect(new_game.game_finished).to eql(true)
    end
    it "sets value of #game_finished to true when it's a draw" do
      new_game.play(1)
      new_game.play(7)
      new_game.play(8)
      new_game.play(2)
      new_game.play(3)
      new_game.play(9)
      new_game.play(4)
      new_game.play(5)
      new_game.play(6)
      expect(new_game.game_finished).to eql(true)
    end
    it 'sets value of #did_someone_win to true when someone wins' do
      new_game.play(1)
      new_game.play(4)
      new_game.play(2)
      new_game.play(5)
      new_game.play(3)
      expect(new_game.did_someone_win).to eql(true)
    end
  end
  describe '#current_turn' do
    it 'alternates between player turns' do
      prev_turn = new_game.current_turn.reverse[0]
      new_game.play(1)
      expect(new_game.current_turn.reverse[0]).to_not eql(prev_turn)
    end
  end
end
