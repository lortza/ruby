puts "\n"
header_size = 80
puts "~" * header_size
puts "Welcome to the Greeting Machine!".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: 
Write a program that chooses an appropriate greeting based 
on the time of day. Try doing this with a case statement.

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

puts "What time is it?"
time = gets.chomp.to_s.

hours []


if time.include "AM"
  puts "Good Morning"
elsif time.include "PM"
  puts "Good Afternoon"
else
  puts "Will you tell me that again, only this time, include AM or PM?"
  puts "What time is it?"
  time = gets.chomp.to_s
end




# while (time.include? != 'am' and time.include? != 'pm') do 
#   puts "Will you tell me that again, only this time, include AM or PM?"
#   puts "What time is it?"
#   time = gets.chomp.to_s
# end
#   until (time.include? == 'am' or time.include? == 'pm')  
# end

# if response == "i'm a dummy" 
# puts "HA HA! You're a DUMMY!"
# end



# case time
# when 0:00 .. 11:59
#   puts "Go swimming!"
# when 50..80
#   puts "Go hiking!"
# when 40..50
#   puts "Stay at home and eat cheese."
# when 30..40
#   puts "Stay in bed."
# when  0..30
#   puts "You may want to buy a snow shovel."
# else
#   puts "You might not actually be on Earth??"
# end






