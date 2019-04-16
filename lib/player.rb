# Classe player

class Player
  attr_accessor :name, :life_points

  def initialize(player_name)
    @name = player_name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end 

  def gets_damage(damage)
    @life_points -= damage
    if @life_points <= 0
      puts "#{@name} a été tué !"
    end
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name} !"
    damage = compute_damage
    puts "Il lui inflige #{damage} points de degats."
    player.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(player_name)
    @weapon_level = 1
    
    super
    @life_points = 100

  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}" 
  end 
end

