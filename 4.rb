def is_palindrome?(num)
  num.to_s == num.to_s.reverse
end

def solve
  max = 0

  (100..999).each do |num1|
    (100..999).each do |num2|
      res = num1 * num2
      max = res if is_palindrome?(res) && res > max
    end
  end

  max
end