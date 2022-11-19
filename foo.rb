#! /usr/bin/env ruby

require_relative 'poker'
require_relative 'player'

p = Player.new('Joe')

g = Poker.new([p])

puts g.hands.length