class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end

terry = Player.new("Terry")

puts terry.name
puts terry.lives
puts terry.lose_life

