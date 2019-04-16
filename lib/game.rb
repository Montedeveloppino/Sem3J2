require_relative 'player'

class Game
  attr_accessor :human_player, :enemies

  def initialize(human)
    @human_player = HumanPlayer.new(human)
    @enemies = [Player.new("S. Curry"), Player.new("K. Durant"), Player.new("K. Thompson"), Player.new("D. Green")]
  end

  def kill_player
    # Supprime un player de la table enemies
    @enemies.each do |gamer|
      if (gamer.life_points <= 0)
          @enemies.delete(gamer)
      end
    end
  end
 
  def is_still_ongoing?
    total = 0
    @enemies.each do |pv|
      total += pv.life_points
    end
    return true if @human_player.life_points > 0 && total <= 0
    # qui retourne true si le jeu est toujours en cours et false sinon. 
    #Le jeu continue tant que le @human_player a encore des points de vie et qu'il reste des Player à combattre 
    #dans l’array @enemies
  end

  def show_players
    #va afficher 1) l'état du joueur humain et 2) le nombre de joueurs "bots" restant
    @human_player.show_state
    puts "Il reste #{@enemies.count} ennemis en jeu."
    
  end

  def menu
    #afficher le menu de choix (juste l'afficher, pas plus)
    puts "**********************************"
    puts "Quelle action veux-tu effectuer ? "
    puts
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner "
    puts
    puts "attaquer un joueur en vue :"
    i = 0
    @enemies.each do |enemie|
      if enemie.life_points > 0
        print "#{i} - "
        enemie.show_state
        i += 1
      end
    end
  end

  def menu_choice()
    puts
    puts "Votre choix ?"
    action = gets.chomp
    puts "----------------------------------"
    if action == "a"
      @human_player.search_weapon
    end
    if action == "s"
      @human_player.search_health_pack
    end
    position = action.to_i
    if @enemies[position].life_points > 0
      @human_player.attacks(enemies[position])
      kill_player
    end
  end


  def enemies_attack
    #faire riposter tous les ennemis vivants. Ils vont attaquer à tour de rôle le joueur humain
    puts "----------------------------------" 
    puts "Les autres joueurs t'attaquent !"
    @enemies.each do | enemie |
      if enemie.life_points > 0
        enemie.attacks(@human_player)
      end
    end
  end

  def end
    #effectuer l'affichage de fin de jeu. Tu sais, la partie "le jeu est fini" puis "Bravo..." ou "Loser..."
    puts "**********************************"
    puts "*** La partie est finie ***"
    if @human_player.life_points > 0
      puts "BRAVO ! TU AS GAGNE !"
    else 
      puts "Loser ! Tu as perdu !"
    end
    puts "**********************************"
  end

end