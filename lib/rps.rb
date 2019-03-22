class RPS
  attr_accessor :winner

  def initialize(player1, player2)
    @players = [player1, player2]
    @rules = { 'paper' => 'rock', 'rock' => 'scissors', 'scissors' => 'paper' }
    result
  end

  def result
    if @players.first == @players.last
      @winner = :draw
    elsif @rules[@players.first] == @players.last
      @winner = :player1
    else
      @winner = :player2
    end
  end
end
