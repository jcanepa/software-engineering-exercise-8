require_relative 'game'

class Poker < Game

  attr_reader :hands

  def initialize(players)
    super
    @hands = Array.new(players.count) { |i| nil }
  end

  def play()
    puts 'Players in the poker game:'
    hands_str = @hands.map { |h| h ? h : 'hand is empty'}
    @players.print_player_names_with(hands_str)
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