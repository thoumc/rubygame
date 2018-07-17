require ('./question.rb')
require ('./player.rb')
require ('./turn.rb')
require ('./turnmanager.rb')


class Game
  attr_accessor :players

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2]
    @turnManager = Turn_manager.new(@players)
  end

  def game_ending?
    @player1.score <= 0 || @player2.score <= 0
  end


  def play
    while !game_ending?
      @current_turn = Turn.new(@turnManager.current_player)
      @current_turn.ask_question
      input = gets.chomp.to_i
      @current_turn.checks(input)
      puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
      @turnManager.newturn
    end
    if @player1.score == 0
      puts "---GAME OVER---"
      puts "#{@player2.name} wins with a score of #{@player2.score}/3. "
      puts "Good bye"
    else
      puts "---GAME OVER---"
      puts "#{@player1.name} wins with a score of #{@player1.score}/3. "
      puts "Good bye"
    end

  end

end

mygame = Game.new
mygame.play
