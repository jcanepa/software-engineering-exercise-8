#! /usr/bin/env ruby

require_relative 'poker'
require_relative 'chess'
require_relative 'go'
require_relative 'player'

poker_players = [
  Player.new('alice'),
  Player.new('bob'),
  Player.new('chris'),
  Player.new('dave')]

go_players = [
  Player.new('alice','white'),
  Player.new('bob', 'black')]

chess_players = [
  Player.new('alice','white'),
  Player.new('bob', 'black')]

sessions = [Poker, Go, Chess].zip(
  [poker_players, go_players, chess_players])

# play all games
sessions.each do |game, players|
  g = game.new(players)
  g.play()
  g.get_results()
  puts
end