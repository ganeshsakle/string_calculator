module StringCalculator
  def add
    return 0 if empty?
    digits.inject { |sum, curr| sum + curr }
  end

  def digits
    gsub("\n", delimiter).split(',').map { |num| num.to_i}
  end

  def delimiter
    @delimiter ||= self[0,2] == '//' ? delimiter = self[2,1] : ','
  end
end