require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  describe '#attack' do
    it 'can attack another player' do
      expect(player2).to receive(:reduce_hitpoints)
      game.attack(player2)
    end
  end

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#switch_turn' do
    it 'changes the attacking player' do
      game.switch_turn
      expect(game.player1).to eq player2
    end
  end

  describe '#players_setup' do
    it 'contains a set players array' do
      expect(game.players_setup).to eq [player1, player2]
    end
  end
end
