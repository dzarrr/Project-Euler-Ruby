def solve()
  sum = 0

  (1...1000).each do |i|
    sum += i if (i % 3 == 0) or (i % 5 == 0)
  end

  sum
end
