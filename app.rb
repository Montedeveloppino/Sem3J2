require 'pry'
require 'bundler'

Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

binding.pry

julie = User.new('julie@julie.com',23)
alec = User.new('alec@alec.com', 20)

puts "Liste d'utilisateurs : "
puts User.all

#event1 = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, alec]) # avec les objets user








