
class Game
  attr_accessor :human_player :enemies

  def initialize(human)
    @human_player = human
    @enemies = []

    4.times do 
    end 
  end

  def kill_player(killed)
    # Supprime un player de la table enemies
    @enemies
  end

  def is_still_ongoing?
    # qui retourne true si le jeu est toujours en cours et false sinon. 
    #Le jeu continue tant que le @human_player a encore des points de vie et qu'il reste des Player à combattre 
    #dans l’array @enemies
  end

  def show_players
    #va afficher 1) l'état du joueur humain et 2) le nombre de joueurs "bots" restant
  end

  def menu
    #afficher le menu de choix (juste l'afficher, pas plus) 
  end

  def menu_choice
=begin
    prend en entrée un string. Cette méthode va permettre de faire réagir le jeu en fonction du choix, dans le menu, de l'utilisateur. 
    Par exemple, si l'entrée est "a", le @human_player doit aller chercher une arme. Si l'entrée est "0", on le fait attaquer l'ennemi 
    présenté au choix "0", etc. Pense à faire appel, dans cette méthode, à la méthode kill_player si jamais un Player est tué par 
    le joueur humain !
=end
  end

  def enemies_attack
    #faire riposter tous les ennemis vivants. Ils vont attaquer à tour de rôle le joueur humain
  end

  def end
    #effectuer l'affichage de fin de jeu. Tu sais, la partie "le jeu est fini" puis "Bravo..." ou "Loser..."
  end
end