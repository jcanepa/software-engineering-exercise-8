class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1
      poker = Poker.new(@player_list)
      poker.play_poker()
      puts poker.get_results()
    when 2
      chess = Chess.new(@player_list)
      chess.play_game()
      puts chess.get_results()
    when 3
      go = Go.new(@player_list)
      go.play()
      puts go.get_score()
    end
  end
end
