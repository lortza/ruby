puts "\n"
header_size = 80
puts "~" * header_size
puts "Welcome to the Weather-based Activity Decision Machine!".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: Change the lesson 3 activity program to check both the 
temperature and whether or not it is raining. Have the program return 
that we will go hiking only if the temperature is right AND it is not 
raining.  (Note: There is more than one way to solve this; this 
exercise is more about playing with new concepts rather than 
creating the best program ever.)

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

puts "Hey, is it raining outside?"
rain = gets.chomp.downcase

if rain == "yes"
  puts "Oh bummer. You should probably stay home and put out buckets to catch the roof leaks."
else
  puts "What's the temperature outside?"
  todays_temp = gets.chomp.to_i
  case todays_temp
  when 80..100
    puts "Go swimming!"
  when 50..80
    puts "Go hiking!"
  when 40..50
    puts "Stay at home and eat cheese."
  when 30..40
    puts "Stay in bed."
  when  0..30
    puts "You may want to buy a snow shovel."
  else
    puts "You might not actually be on Earth??"
  end
end
