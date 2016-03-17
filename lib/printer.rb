class Printer
  def welcome
    puts "Welcome to MASTERMIND\n\n"
  end

  def prompt_input
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print ">"
  end

  def instructions
    puts "I have colors"
    puts "You have guesses"
    puts "Let's do this."
  end

  def invalid_input
    puts "Be less dumb"
  end


  def game_start
    puts "I have generated a beginner sequence with four elements made up of: "
    puts "(r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  end

  def what_is_your_guess
    puts "What's your guess?"
    print ">"
  end

  def play_again
    puts "Girl, you did so good. Wanna play again?"
  end
end
