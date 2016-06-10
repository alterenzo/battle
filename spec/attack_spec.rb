require 'attack'

describe Attack do

  subject(:attack) { described_class.new}
  let(:player1) { double :player1, receive_damage: nil }
  let(:player2) { double :player2, receive_damage: nil }

  describe "#perform_attack" do
    it 'casuses damage to the second player' do
      expect(player2).to receive :receive_damage
      attack.perform_attack
    end
  end

end
