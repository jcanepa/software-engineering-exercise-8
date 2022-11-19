require_relative 'game'

class Chess < Game

  def play()
    super
    @players.print_player_names()
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end
end
