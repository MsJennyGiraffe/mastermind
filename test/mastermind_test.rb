require_relative '../lib/mastermind'
require 'minitest/autorun'

class MastermindTest < Minitest::Test

  def setup
    @mastermind = Mastermind.new
  end

end
