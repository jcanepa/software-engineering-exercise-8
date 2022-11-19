require_relative 'game'

class Poker < Game

  def initialize(players)
    super
    @hands = Array.new(players.count) { |i| nil }
  end

  def play()
    super
    hands_str = @hands.map { |h| h ? h : 'hand is empty'}
    @players.print_player_names_with(hands_str)
    # [pretend there's code here]
  end

  def get_results()
    '[pretend these are poker results]'
  end
end