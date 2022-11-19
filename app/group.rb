require_relative 'player'

class Group


  attr_reader :collection

  def initialize(players, colors=nil)
    if colors == nil
      colors = Array.new(players.length) { |i| nil }
    end

    @collection = []
    players.zip(colors).each do |player, color|
      player = Player.new(player)
      @collection.append(player)
    end
  end

  def count()
    @collection.length
  end

  def print_player_names()
    for p in @collection do
      p.print_info
    end
  end
end