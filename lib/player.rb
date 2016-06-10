
class Player

  attr_reader :name, :hitpoints

  DEFAULT_HITPOINTS = 60
  DEFAULT_DAMAGE = 10

  def initialize(name)
    @name = name
    @hitpoints = DEFAULT_HITPOINTS
  end

  def reduce_hitpoints
    @hitpoints -= DEFAULT_DAMAGE
  end

end




