def is_prime?(x)
  x_root = Math.sqrt(x).to_i
  (2..x_root).all? do |y|
    x % y != 0
  end
end

def prime_number_for(nth_element)
  n = nth_element.to_i
  prime_count = 2
  num = 3
  nth_prime = 3
  until prime_count == n
    num += 2
    if is_prime?(num)
      nth_prime = num
      prime_count += 1
    end
  end
  nth_prime
end