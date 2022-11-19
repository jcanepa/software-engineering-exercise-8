#! /usr/bin/env ruby

require_relative 'poker'
require_relative 'chess'
require_relative 'go'
require_relative 'player'

# play all games
games = [Poker, Go, Chess]

poker_players = [Player.new('alice'), Player.new('bob'), Player.new('chris'), Player.new('dave')]
go_players =   [Player.new('alice', 'white'), Player.new('bob', 'black')]
chess_players =   [Player.new('alice', 'white'), Player.new('bob', 'black')]

player_groups = [
  poker_players,
  go_players,
  chess_players
]

games.zip(player_groups).each do |game, p|
  g = game.new(p)
  g.play()
  g.get_results()
  puts
end