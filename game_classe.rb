class Game
  def question
    question = Question.new()
    question.math_question
    puts "> "
    answer = gets.chomp
    if question.assess_answer(answer)
      puts "correct"
    else
      puts "incorrect"
      @current_player.lose_life
    end

end

