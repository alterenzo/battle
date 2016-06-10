require_relative './player.rb'

class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(other_player)
    other_player.reduce_hitpoints
    switch_turn
  end

  def switch_turn
    @players.reverse!
  end

end
