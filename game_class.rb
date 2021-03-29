class Game

  def initialize
    @round_num = 0
  end

  def question
    question = Question.new()
    question.math_question
    print "> "
    @answer = gets.chomp
    if question.assess_answer(@answer.to_i)
      puts "Yes! Correct!"
    else
      puts "Sorry! Incorrect"
      @current_player.lose_life
    end
end


def rounds
  @round_num += 1
  puts "---Round #{@round_num}---"
  @current_player = @player1
  puts "#{@player1.name}:"
  question
  check_score
  print_score
  @current_player = @player2
  puts "#{@player2.name}:"
  question
  check_score
  print_score
  rounds
end


def print_score
  puts "Player One: #{@player1.lives}/3 vs Player Two: #{@player2.lives}/3"
end

def check_score
  if @player1.lives === 0
    
      winner(@player2.name)
  
  elsif @player2.lives === 0
   
  winner(@player1.name)
  end
end

    def winner(player)
      puts "---Game Over!---"
      puts "---#{player} wins!---"
      exit(0)
    end



def new_game
  puts "Start Game"
  puts "Player One, please enter your name:"
  @player1 = Player.new(gets.chomp)
  puts "Player Two, please enter your name:"
  @player2 = Player.new(gets.chomp)
  rounds
  end
end



