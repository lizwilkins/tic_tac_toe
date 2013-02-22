require '../lib/player'

player = Player.new("Bluto")

puts "#{player} should be an instance of Player."
puts "#{player.name} should be 'Bluto'."
player.set_mark("X")
puts "#{player.mark} should be 'X'"