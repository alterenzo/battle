class Game

  attr_reader :players, :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
    change_turn
  end

  def change_turn
    @current_turn = opponent(@current_turn)
  end

  private

  def opponent(current_player)
    @players.find { |player| player != @current_turn }
  end



end
