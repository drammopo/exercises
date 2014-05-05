require 'minitest/autorun'
require 'minitest/pride'

require_relative 'sum_of_multiples'

class SumOfMultiplesTest < MiniTest::Test

  def test_for_multiples_up_to_two
    multiples = SumOfMultiples.new(2)
    assert_equal [], multiples.check
  end

  def test_for_multiples_up_to_six
    multiples = SumOfMultiples.new(6)
    assert_equal [3, 5, 6], multiples.check
  end

  def test_for_multiples_up_to_ten
    multiples = SumOfMultiples.new(10)
    assert_equal [3, 5, 6, 9, 10], multiples.check
  end

  def test_for_multiples_up_to_fifteen
    multiples = SumOfMultiples.new(15)
    assert_equal [3, 5, 6, 9, 10, 12, 15], multiples.check
  end

  def test_for_sum_of_multiples_with_no_multiples
    multiples = SumOfMultiples.new(2)
    assert_equal 0, multiples.sum
  end

  def test_for_sum_of_multiples_up_to_ten
    multiples = SumOfMultiples.new(10)
    assert_equal 33, multiples.sum
  end

  def test_for_sum_of_multiples_up_to_ten
    multiples = SumOfMultiples.new(15)
    assert_equal 60, multiples.sum
  end
end
