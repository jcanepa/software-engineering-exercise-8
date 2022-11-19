require_relative 'game'

class Go < Game

  def play()
    super
    @players.print_player_names()
    # [pretend there's code here]
  end

  def get_results()
    return '[pretend these are go results]'
  end
end
