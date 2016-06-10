class Attack

  def initialize(attacker, defender)
    @attacker = attacker
    @defender = defender
  end

  def run(defender)
    defender.receive_damage
  end
end
