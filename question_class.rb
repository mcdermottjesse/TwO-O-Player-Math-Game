class Question

def initialize

@num1 = rand(1..20)
@num2 = rand(1..20)
@sum = @num1 + @num2
end

def math_question
  puts "What does #{@num1} plus #{@num2} equal?"
end

def assess_answer(answer)
  @sum = answer
end
end

question = Question.new()
puts question.math_question
puts question.assess_answer(15)
