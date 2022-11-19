#! /usr/bin/env ruby

require_relative 'app/group'
require_relative 'app/games/poker'
require_relative 'app/games/go'
require_relative 'app/games/chess'

# groups of players
colors = [:white, :black]
poker_players = Group.new([:Alexandria, :Natalie, :Jenny, :Ian])
go_players = Group.new([:Alexandria, :Natalie], colors)
chess_players = Group.new([:Jenny, :Ian], colors)

# a session is a (game & group of players)
sessions = [Poker, Go, Chess].zip(
  [poker_players, go_players, chess_players])

# play all games
sessions.each do |game, players|
  g = game.new(players)
  g.play()
  g.get_results()
  puts
end