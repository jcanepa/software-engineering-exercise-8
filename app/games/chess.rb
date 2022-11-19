require_relative 'game'

class Chess < Game

  def play()
    puts "Players in the chess game:"
    self.print_players()
    # [pretend there's code here]
  end

  def get_results()
    return "[pretend these are chess results]"
  end
end
