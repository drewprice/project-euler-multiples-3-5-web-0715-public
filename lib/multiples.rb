def multiple_of_3_or_5?(n)
  n % 3 == 0 || n % 5 == 0
end

def collect_multiples(limit)
  (1...limit).select { |n| multiple_of_3_or_5?(n) }
end

def sum_multiples(limit)
  collect_multiples(limit).reduce(&:+)
end
