require_relative "game"

puts "Welcome to Sladders The Game!"

player1 = Player.new("Michael", 0, false)
player2 = Player.new("Robb", 0, false)
player3 = Player.new("Yield", 0, true)
player4 = Player.new("Bestow", 0, true)
players = [player1, player2, player3, player4]

game = Game.new(players)
winner = game.yield_commencement()

puts "Congratulations on avoiding the Jaguar, #{winner}!"
