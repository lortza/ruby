#add all digits in a number

input = 12345
output = 15
p output == input.to_s.split('').map(&:to_i).reduce(:+)



