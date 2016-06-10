class Game

  attr_reader :players, :current_turn_player

  def initialize(player1, player2, attack_class = Attack)
    @players = [player1, player2]
    @current_turn_player = player1
    @attack_class = attack_class
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    attack = @attack_class.new
    attack.run(opponent_of(@current_turn_player))
    change_turn
  end



  def opponent_of(current_player)
    @players.find { |player| player != @current_turn_player }
  end

  private

  def change_turn
    @current_turn_player = opponent_of(@current_turn_player)
  end



end
