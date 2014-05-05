require 'minitest/autorun'
require 'minitest/pride'

require_relative 'sum_of_multiples'

class SumOfMultiplesTest < MiniTest::Test

  def test_for_multiples_up_to_two
    multi = SumOfMultiples.new(2)
    assert_equal [], multi.multiples
  end

  def test_for_multiples_up_to_six
    multi = SumOfMultiples.new(6)
    assert_equal [3, 5, 6], multi.multiples
  end

  def test_for_multiples_up_to_ten
    multi = SumOfMultiples.new(10)
    assert_equal [3, 5, 6, 9, 10], multi.multiples
  end

  def test_for_multiples_up_to_fifteen
    multi = SumOfMultiples.new(15)
    assert_equal [3, 5, 6, 9, 10, 12, 15], multi.multiples
  end

  def test_for_sum_of_multiples_with_no_multiples
    multi = SumOfMultiples.new(2)
    assert_equal 0, multi.sum
  end

  def test_for_sum_of_multiples_up_to_ten
    multi = SumOfMultiples.new(10)
    assert_equal 33, multi.sum
  end

  def test_for_sum_of_multiples_up_to_ten
    multi = SumOfMultiples.new(15)
    assert_equal 60, multi.sum
  end
end