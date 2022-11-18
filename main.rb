#! /usr/bin/env ruby

require_relative 'poker'
require_relative 'chess'
require_relative 'go'

# single game play
# players = ['alice', 'bob', 'chris', 'dave']
# game = Poker.new(players)
# game.play()
# puts

# play all games
games = [Poker, Go, Chess]

player_groups = [
  ['alice', 'bob', 'chris', 'dave'],
  [['alice', 'white'], ['bob', 'black']],
  [['alice', 'white'], ['bob', 'black']]
]

games.zip(player_groups).each do |game, p|
  g = game.new(p)
  g.play()
  g.get_results()
  puts
end