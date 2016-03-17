require_relative '../lib/code_generator'
require 'minitest/autorun'

class CodeGeneratorTest < Minitest::Test
  def setup
    @code_generator = CodeGenerator.new
  end

  def test_generate_colors_returns_a_string
    assert_equal String, @code_generator.generate_colors.class
  end

  def test_generate_colors_returns_four_characters_as_a_code
    assert_equal 4, @code_generator.generate_colors.length
  end
end
