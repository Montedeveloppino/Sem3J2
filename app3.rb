require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

require 'pry'

puts "-------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

print "Quel est ton nom ? "
player_name = gets.chomp
puts "Bonjour #{player_name} !"

my_game = Game.new(player_name)

binding.pry