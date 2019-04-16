# Classe player

class Player
  attr_accessor :name, :life_points

  def initialize(player_name)
    @name = player_name
    @life_points = 10
    # prend le nom du joueur et affecte 10 pots de vie à l'instanciation de l'objet player
  end  
   
  def show_state
    puts "#{self.name} a #{self.life_points} points de vie"
  end

  def gets_damage(damage)
    return puts "le joueur #{self.name} a été tué !" if (@life_points = @life_points - damage) <= 0
    # if @life_points <= 0
    #   puts "le joueur #{self.name} a été tué !"
    # end
  end

  def attacks(player)
    puts "le joueur #{self.name} attaque le joueur #{player.name} !"
    damage = compute_damage    # tir au dé les dégats
    player.gets_damage(damage)   # impute les dégats au player
    puts "il lui inflige #{damage} points de dommages"
  end

  def compute_damage
    return rand(1..6)
  end


end



