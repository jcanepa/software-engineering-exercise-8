class Session

  attr_reader :game, :players

  def initialize(game, players)
    @game = game
    @players = players

    game.new(players)
  end
end