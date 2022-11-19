class Group
  attr_reader :collection

  def initialize(names, colors=[nil])
    if colors[0] == nil
      colors = Array.new(names.length) { |i| nil }
    end

    @collection = []

    names.zip(colors).each do |name, color|
      player = Player.new(name, color)
      @collection.append(player)
    end
  end

  def count() @collection.length end

  def print_player_names()
    for p in @collection do
      p.print_info
    end
  end

  def print_player_names_with(iterable)
    return if iterable.length != self.count
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