require ('./question.rb')



class Turn
  def initialize (player)
    @current_player = player
    @question = Question.new
  end

  def ask_question
    puts "---NEW TURN---"
    puts "#{@current_player.name}: What does #{@question.num_a} plus #{@question.num_b} equal?"
  end

  def checks(input)
    if input == @question.answer
      puts "YES! You are correct."
    else
      @current_player.lost_turn
      puts "Seriously? No!"
    end
  end

end