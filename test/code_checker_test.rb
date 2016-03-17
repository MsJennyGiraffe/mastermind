require_relative '../lib/code_checker'
require 'minitest/autorun'

class CodeCheckerTest < Minitest::Test

  def setup
    @code_checker = CodeChecker.new
  end

  def test_check_position_returns_the_amount_of_colors_in_the_correct_position
    assert_equal 4, @code_checker.check_position(["R", "G", "B", "Y"], ["R", "G", "B", "Y"])
    assert_equal 3, @code_checker.check_position(["R", "G", "B", "Y"], ["R", "R", "B", "Y"])
    assert_equal 2, @code_checker.check_position(["R", "G", "B", "Y"], ["R", "R", "R", "Y"])
    assert_equal 1, @code_checker.check_position(["R", "G", "B", "Y"], ["R", "R", "R", "R"])
  end

  def test_check_colors_returns_the_amount_of_colors_correctly_guessed
    assert_equal 4, @code_checker.check_colors(["R", "G", "B", "Y"], ["R", "G", "B", "Y"])
  end

end
