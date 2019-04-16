require 'bundler'
Bundler.require
require 'pry'
require_relative 'lib/game'
require_relative 'lib/player_ori'

# création des joueurs
player1 = Player.new("Josiane")
player2 = Player.new("Josée")

while player1.life_points>0 && player2.life_points>0 
  puts "-------------------------------"
  puts "Voici l'état de chaque joueur :"
  puts  player1.show_state
  puts  player2.show_state

  # le fight commence ...
  puts "Passons à la phase d'attaque :"
  
  player1.attacks(player2)
  if player2.life_points <= 0
    break
  end
  player2.show_state 

  player2.attacks(player1)
  if player1.life_points <= 0
    break
  end
  player1.show_state 
end

jojo = HumanPlayer.new("jojo")

binding.pry










