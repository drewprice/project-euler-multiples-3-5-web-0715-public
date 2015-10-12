class Multiples
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    (1...limit).select { |n| multiple_of?([3, 5], n) }
  end

  def sum_multiples
    collect_multiples.reduce(&:+)
  end

  private

  def multiple_of?(divisors, candidate)
    divisors.any? { |d| candidate % d == 0 }
  end
end
