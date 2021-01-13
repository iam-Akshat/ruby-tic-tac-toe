require '../lib/player.rb'

describe Player do
  describe '#initialize' do
    let(:test_player) { Player.new('akshat', 'X') }

    it 'checks if name was correctly assigned' do
      expect(test_player.name).to eql('akshat')
    end
    it 'checks if roles was correctly assigned' do
      expect(test_player.role).to eql('X')
    end
    it 'assigned X if anything other than X or O is given' do
      expect(Player.new('akshat', 'Z').role).to eql('X')
    end
  end
end
