require_relative 'game'

class Poker < Game

  attr_reader :hands

  def initialize(players)
    super
    @hands = Array.new(players.count) { |i| nil }
  end

  def play()
    puts 'Players in the poker game:'
    # print players & their hands
    # @players.count().times { |i| print_infoputs "#{self.players.print_info()}, hand: #{self.get_player_hand(i)}" }
    @players.print_player_names()
    # [pretend there's code here]
  end

  def get_results()
    '[pretend these are poker results]'
  end

  def get_player_hand(i)
    return @hands[i]
  end

  def print_player_names()
    @players.each do |p, i|
      p.print_info
      @hands[i]
    end
  end
end