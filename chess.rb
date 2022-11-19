require_relative 'game'

class Chess < Game
  def initialize(players)
    @players = players
  end

  def play()
    puts "Players in the chess game:"
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end

  def print_players()
    # list player names
    for p in @players do
      puts p.name
    end
  end
end
