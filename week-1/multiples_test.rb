require_relative 'multiples'
require 'test/unit'

class TestMultiples < Test::Unit::TestCase
  def test_range_10
    assert_equal([3,5,6,9], Multiples.compute(10, [3,5]))
  end

  def test_range_100
    assert_equal(
      [2, 3, 4, 6, 8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22, 24, 26, 27, 28, 30, 32, 33, 34, 36, 38, 39, 40, 42, 44, 45, 46, 48, 50, 51, 52, 54, 56, 57, 58, 60, 62, 63, 64, 66, 68, 69, 70, 72, 74, 75, 76, 78, 80, 81, 82, 84, 86, 87, 88, 90, 92, 93, 94, 96, 98, 99],
      Multiples.compute(100, [2,3]))
  end

  def test_error_message
    assert_equal("invalid value for Integer(): \"w3\"", Multiples.compute(10, ["w3"]))
  end
end

