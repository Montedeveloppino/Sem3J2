# Classe player

class Player
  attr_accessor :name, :life_points

  def initialize(name_save)
    @name = name_save
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
    degats = compute_damage
    puts "Il lui inflige #{degats} points de degats."
    player.gets_damage(degats)
  end

  def compute_damage
    return rand(1..6)
  end

end



