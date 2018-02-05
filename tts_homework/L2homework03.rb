
# Ask for integers
puts "Gimme 2 integers, dawg."
puts "Integer 1: "
integer1 = gets.chomp.to_i

if 
  integer1 != 0 

    puts "Integer 2: "
    integer2 = gets.chomp.to_i
      if 
        integer2 != 0
        #stopped here
        else
          puts "An integer is a whole number without decimal points. Please Try again."
          puts "Integer 2: "
          integer2 = gets.chomp.to_i
      end

  else
    puts "An integer is a whole number without decimal points. Please Try again."
    puts "Integer 1: "
    integer1 = gets.chomp.to_i

end




# Divide #1 by #2
result = integer1 / integer2
remainder = integer1 % integer2

# returns the result including the remainder.
puts "The result is #{result} with a remainder of #{remainder}"

# If either of the numbers is not an integer, then don’t accept the number and ask again.

# Do not accept zero (0) as a number.