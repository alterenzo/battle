require 'game'

describe Game do


  subject(:game) { described_class.new(player1, player2, attack_class) }
  let(:attack_class) { double :attack_class, new: attack}
  let(:attack) { double :attack }
  let(:player1) { double :player1, receive_damage: nil }
  let(:player2) { double :player2, receive_damage: nil }


  describe '#attack' do
    it 'responds to #attack' do
      expect(game).to respond_to(:attack)
    end

    context 'When the attack is complete' do
      it 'switches the player for the current turn' do
        game.attack
        expect(game.current_turn).to eq player2
      end
    end
  end
end
