def generate_fibo(num_1, num_2, limit)
  fibo = [num_1, num_2]
  
  loop do
    next_ele = fibo[-1] + fibo[-2]
    break if next_ele > limit
    fibo << next_ele
  end

  fibo
end

def solve()
  limit = 4000000
  fibo = generate_fibo(1, 2, limit)
  fibo
    .select { |i| i % 2 == 0}
    .reduce { |sum, n| sum + n}
end