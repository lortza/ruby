
# Ask for integers
puts "Gimme 2 integers, dawg."
puts "Integer 1: "
integer1 = gets.chomp.to_i

puts "Integer 2: "
integer2 = gets.chomp.to_i

# Divide int1 by int2
result = integer1 / integer2
remainder = integer1 % integer2

# returns the result including the remainder.
puts "The result is #{result} with a remainder of #{remainder}"

# If either of the numbers is not an integer, then don’t accept the number and ask again.

# Do not accept zero (0) as a number.