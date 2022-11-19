#! /usr/bin/env ruby

require_relative 'player'
require_relative 'poker'
require_relative 'go'
require_relative 'chess'

poker_players = [
  Player.new('Alexandria'),
  Player.new('Natalie'),
  Player.new('Jenny'),
  Player.new('Ian')]

go_players = [
  Player.new('Alexandria','white'),
  Player.new('Natalie', 'black')]

chess_players = [
  Player.new('Alexandria','white'),
  Player.new('Natalie', 'black')]

sessions = [Poker, Go, Chess].zip(
  [poker_players, go_players, chess_players])

# play all games
sessions.each do |game, players|
  g = game.new(players)
  g.play()
  g.get_results()
  puts
end