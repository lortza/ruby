puts "\n"
header_size = 80
puts "~" * header_size
puts "And now it's time to Play the ColorH4TR Game...".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: Write a program that asks the user for their favorite color. 
If the user answers blue OR green, the program tells the user "Good choice. 
That is a great color!" Otherwise, the program says "Really?" and then 
goes on to tell the user that that color (the program mentions the color by 
name) is really not its favorite.

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================
puts "Yo. What's your favorite color?"
response = gets.chomp.downcase

if (response == "blue" or response == "green")
  puts "Good choice. That is a great color!"
else
  puts "Really? Bummer. #{response.capitalize} is really not my favorite."
end











