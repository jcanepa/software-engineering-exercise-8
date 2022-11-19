
class Group
  attr_reader :collection

  def initialize(players, colors=[nil])
    colors = Array.new(players.length) { |i| nil } if colors[0] == nil

    @collection = []

    players.zip(colors).each do |player, color|
      player = Player.new(player, color)
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

  def print_player_names_with(iterable)
    @collection.zip(iterable).each do |player, it|
      puts "#{player.name} #{it}"
    end
  end

  Player = Struct.new(:name, :color) do
    def print_info()
      puts "#{name} #{color}"
    end
  end
end