class Player
  attr_reader :name, :color

  def initialize(name, color=nil)
    @name = name
    @color = color
  end

  def print_info()
    puts @name, @color
  end
end