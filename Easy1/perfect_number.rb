class PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 0

    sum = 0
    1.upto(num-1) {|n| sum += n if num % n == 0}

    case
      when sum == num then 'perfect'
      when sum < num then 'deficient'
      else 'abundant'
    end
  end
end
