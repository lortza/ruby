my_str = <<-art

Assignment: Write a program that asks the user to do some
simple arithmetic (let's say 1 + 2, and 5 - 3) and lets them 
know if they got the question right.

art
puts my_str

header_size = 80
puts "~" * header_size
puts "And now it's time to math off...".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2

# =========== START PROGRAM =====================
space = "\n" * 1


puts "Let's do some math. Answer these questions:"
puts "1 + 2"
response = gets.chomp.to_i

if response == 3
  puts "Correct"
else
  puts "Incorrect. The correct answer is 3."
end

puts space

puts "3 + 2"
response = gets.chomp.to_i

if response == 5
  puts "Correct"
else
  puts "Incorrect. The correct answer is 5."
end

puts space

puts "4 * 2"
response = gets.chomp.to_i

if response == 8
  puts "Correct"
else
  puts "Incorrect. The correct answer is 8."
end




# puts "When you're ready to move on, type 'next'."
# prompt = gets.chomp.upcase

# if prompt == "NEXT"
#   puts " "
#   end











