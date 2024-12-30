module StringCalculator
  def add
    return 0 if empty?
    digits.inject { |sum, curr| sum + curr }
  end

  def digits
    split(',').map { |num| num.to_i}
  end
end