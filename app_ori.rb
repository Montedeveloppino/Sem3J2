require 'bundler'
Bundler.require
require 'pry'
require_relative 'lib/game'
require_relative 'lib/player'

# création des joueurs
player1 = Player.new("Josiane")
player2 = Player.new("Josée")

while player1.life_points>0 && player2.life_points>0 
  puts "-------------------------------"
  puts "Voici l'état de chaque joueur :"
  #puts "#{player1.name} - avec le status : "
  puts  player1.show_state
  #puts "#{player2.name} - avec le status : "
  puts  player2.show_state

  # le fight commence ...
  puts "Passons à la phase d'attaque :"
  
  player1.attacks(player2)
  player2.show_state    
  if player2.life_points <= 0
    break
  end
  player2.attacks(player1)
  player1.show_state 
  if player1.life_points <= 0
    break
  end
end

#binding.pry










