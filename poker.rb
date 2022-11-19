require_relative 'game'

class Poker < Game

  attr_reader :players, :hands

  def initialize(players)
    @players = players
    @hands = Array.new(players.length) {|i| nil }
  end

  def play()
    puts 'Players in the poker game:'
    # print players & their hands
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def get_results()
    '[pretend these are poker results]'
  end

  def get_player_hand(i)
    return @hands[i]
  end
end