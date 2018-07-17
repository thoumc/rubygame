
class Question
  attr_accessor :num_a, :num_b, :answer
  def initialize
    @num_a = rand(1..20)
    @num_b = rand(1..20)
  end

  def answer
    @num_a + @num_b
  end

end