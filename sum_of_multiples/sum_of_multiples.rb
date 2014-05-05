class SumOfMultiples

  def initialize(upper_bound)
    @upper_bound = upper_bound
  end

  def check
    numbers = 1.upto(@upper_bound)
    result = []

    numbers.each do |number|
      result << multiple(number)
    end
    result.compact
  end

  def sum
    multiples.inject(0, &:+)
  end

  private

  def multiple_of?(divided_by, number_in_question)
    number_in_question % divided_by == 0
  end

  def multiple(number)
    return number if multiple_of?(3, number) || multiple_of?(5, number)
  end
end
