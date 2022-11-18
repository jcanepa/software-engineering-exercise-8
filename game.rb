class Game
  attr_reader :players

  def initialize(players)
    @players = players
  end

  def play()
    raise NotImplementedError, 'Game subclass should implement this method'
  end

  def get_results()
    raise NotImplementedError, 'Game subclass should implement this method'
  end
end