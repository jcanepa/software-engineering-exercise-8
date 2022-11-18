require_relative 'game'
require_relative 'go_player'

class Go < Game
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play()
    puts 'Players in the go game:'
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def get_results()
    return '[pretend these are go results]'
  end
end
