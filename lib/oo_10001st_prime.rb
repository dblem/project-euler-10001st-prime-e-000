class Prime

  def initialize(input)
    @nth_element = input.to_i
    @prime_count = 2
    @num = 3
    @nth_prime = 3
  end

  def is_prime?
    num_root = Math.sqrt(@num).to_i
    (2..num_root).all? do |x|
      @num % x != 0
    end
  end

  def number
    until @prime_count == @nth_element
      @num += 2
      if is_prime?
        @nth_prime = @num
        @prime_count += 1
      end
    end
    @nth_prime
  end

end