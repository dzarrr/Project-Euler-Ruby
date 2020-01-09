def is_evenly_divisible?(range, num)
  range.each do |divisor|
    return false if num % divisor != 0
  end

  true
end

def solve
  i = 1
  loop do 
    break if is_evenly_divisible?(1..20, i)
    i += 1
  end

  puts i
end

