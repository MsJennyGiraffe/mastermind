require_relative 'printer.rb'
require_relative 'code_generator'
require_relative 'code_checker'
require 'pry'


class Mastermind
  def initialize
    @printer = Printer.new
    @play_on = true
    @code_generator = CodeGenerator.new
    @code_checker = CodeChecker.new
  end

  def start_game
    @printer.welcome
    while @play_on
      menu
      @play_on = game_flow
    end
  end

  def menu
    input_valid = false
    while input_valid == false
      @printer.prompt_input
      input = get_input
      if input == 'p'
        input_valid = true
      elsif input == "i"
        input_valid = false
        @printer.instructions
      elsif input == "q"
        exit
      else
        input_valid = false
        @printer.invalid_input
      end
    end
  end

  def game_flow
    generated_colors = @code_generator.generate_colors
    puts generated_colors
    game_won = false
    @printer.game_start
    until game_won
      @printer.what_is_your_guess
      user_guess = get_input.upcase
    #compare colors
      game_won = @code_checker.win?(user_guess, generated_colors)
      puts game_won
    #output
    #compare position
    #output
    #repeat until they guess correctly

    #return false if they dont want to play again, true if they do
    end
    play_again?
  end

  def play_again?
    @printer.play_again
    answer = get_input
    if answer == "y" || answer == "yes"
      true
    elsif answer == "n" || answer == "no"
      false
    else
      @printer.invalid_input
    end
  end
    #ask if they want to play again (@printer.play_again)
    #assign get_input to a variable
      #if variable is (y)es return true
      #elsif (n)o, reutrn false
      #else, @printer.invalid_input


  def end_game

  end

  def get_input
    gets.chomp
  end

end

Mastermind.new.start_game
