class Game
  attr_reader :players

  # a game has players
  def initialize(players)
    @players = players
  end

  def play()
    raise NotImplementedError, 'Game subclass should implement this method'
  end

  def get_results()
    raise NotImplementedError, 'Game subclass should implement this method'
  end

  # player_count, use_colors
  def rules()
    return 0, false
  end
end