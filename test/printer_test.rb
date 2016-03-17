require_relative '../lib/printer'
require 'minitest/autorun'

class PrinterTest < Minitest::Test

  def setup
    @printer = Printer.new
  end

  #I dont know how to test puts since it returns nil.

end
