puts "\n"
header_size = 80
puts "~" * header_size
puts "And now it's time to Play COPYCAT!".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: Did your brother or sister ever copycat everything 
you said just to get under your skin? Man, was that annoying or what?! 
Let’s write a program that does the same thing. This annoying 
program can only be stopped if the user says “I’m  a dummy” 
because the program won’t repeat something so self deprecating!

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

puts "You know I'm going to repeat everything you say until you admit you're a dummy by typing 'I'm a dummy.'"
puts "Go on. Test me. Say something."
response = gets.chomp.downcase

while response != "i'm a dummy" do 
  puts "#{response.upcase}"
  response = gets.chomp.downcase
  end
  until response == "i'm a dummy"   
end

if response == "i'm a dummy" 
puts "HA HA! You're a DUMMY!"
end

