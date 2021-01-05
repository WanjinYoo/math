class Questions
  attr_accessor :name, :life

  def initialize
    @number1 = 0
    @number2 = 0
    @answer = self.get_answer 
  end

  def get_question()
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    puts "What does #{@number1} + #{@number2} ?"

  end

  def get_answer
    @number1 + @number2
  end
end