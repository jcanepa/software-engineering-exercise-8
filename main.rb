#! /usr/bin/env ruby

require_relative 'poker'
require_relative 'chess'
require_relative 'go'
require_relative 'play_games'

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new(2, [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGames.new(3, [["alice", "white"], ["bob", "black"]])
pg.play()

# add a game super-class
# players = ["alice", "bob", "chris", "dave"]
# game = Poker.new(players)
# game.play()
