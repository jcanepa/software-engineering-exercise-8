# Superclass of all games types.
class Game
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def play()
    puts "#{self.class.name} players:"
  end

  def get_results()
    raise NotImplementedError, 'Game subclass should implement this method'
  end
end