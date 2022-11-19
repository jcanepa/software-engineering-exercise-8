#! /usr/bin/env ruby

require_relative 'app/group'
require_relative 'app/games/go'
require_relative 'app/games/chess'
require_relative 'app/games/poker'

# groups of players
colors = [:white, :black]
chess_players = Group.new([:Jenny, :Ian], colors)
go_players = Group.new([:Alexandria, :Natalie], colors)
poker_players = Group.new([:Alexandria, :Natalie, :Jenny, :Ian])

# a session is a (game & group of players)
sessions = [Chess, Go, Poker].zip(
           [chess_players, go_players, poker_players])

# play all games
sessions.each do |game, players|
  g = game.new(players)
  g.play()
  g.get_results()
  puts
end