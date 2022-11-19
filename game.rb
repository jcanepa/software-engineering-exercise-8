class Game
  attr_reader :players

  # a game has players
  def initialize(players)
    @players = players
  end

  # play a game
  def play()
    raise NotImplementedError, 'Game subclass should implement this method'
  end

  # results of game play
  def get_results()
    raise NotImplementedError, 'Game subclass should implement this method'
  end
end