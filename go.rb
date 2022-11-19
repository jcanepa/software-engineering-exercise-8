require_relative 'game'

class Go < Game

  attr_reader :players

  def initialize(players)
    @players = players
  end

  def play()
    puts 'Players in the go game:'
    # print each player's name and color
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return '[pretend these are go results]'
  end
end
