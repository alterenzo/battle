require_relative './player.rb'

class Game

  attr_reader :players_setup

  def initialize(player1, player2)
    @players = [player1, player2]
    @players_setup = [player1, player2]
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
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

  def game_over?
    @players.select{|player| player.hitpoints <= 0 }.any?
  end

end
