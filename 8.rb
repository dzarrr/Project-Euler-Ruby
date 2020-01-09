def find_largest_product(str, length)
  start = 0
  max = 0

  while (start + length < str.length)
    start += 1
    product = str[start...(start+length)].split("").to_a.map(&:to_i)    
    product = product.reduce(1) { |prod, n| prod * n}
    max = product if product > max
  end

  max
end


def solve
  file = File.open("8_text.txt")
  str = file.read.split("\n").join("")

  find_largest_product(str, 13)
end