require 'pry'


class CodeChecker

  def initialize
    guess_result = { "R" => 0, "G" => 0, "B" => 0, "Y" => 0}
  end

  def win?(user_guess, color_array)
    if user_guess == color_array
      true
    else
      false
    end
  end

  def check_guess(user_guess, color_array)
    check_colors(user_guess, color_array)
    check_postition(user_guess, color_array)
  end

  def check_colors(user_guess, color_array)
    guess_result = user_guess.group_by do |colors|
      colors
    end
    generated_result = color_array.group_by do |colors|
      colors
    end

    guess_result.each do |key, value|
      value = value.length
    end
  end

  def check_postition(user_guess, color_array)
    user_guess.each_with_index.count do |color, index|
      color == color_array[index]
    end
  end
binding.pry
end
