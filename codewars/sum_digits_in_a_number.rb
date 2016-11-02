#sum all of the digits in a number. ex: 23 -> 2 + 3 = 5

input = 23
output = 5

def sumDigits(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

p sumDigits(input)