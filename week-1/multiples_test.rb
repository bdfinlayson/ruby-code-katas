require_relative 'multiples'
require 'test/unit'

class TestMultiples < Test::Unit::TestCase
  def test_range_10
    assert_equal([3,5,6,9], Multiples.compute(10, [3,5]))
  end

  def test_error_message
    assert_equal("invalid value for Integer(): \"w3\"", Multiples.compute(10, ["w3"]))
  end
end

