# All different kinds of loops!
# Loops need a range, an increment, or a defined stop point

puts "\n"
header_size = 80
puts "~" * header_size
puts "L4 Loop Library".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2



# For Loop -- shunned by Gant
puts "~~~~~ For Loop ~~~~~~"
for n in 1..3
  puts "She loves you yeah yeah yeah! (n = #{n})"
end
puts "\n" * 2


# While Loop
# This is great for when you need to repeat the loop block 
# over and over again. Like the "say 'i'm a dummy' game"

puts "~~~~~ While Loop ~~~~~~"
n = 1
while n <= 3
  puts "She loves you yeah yeah yeah! (n = #{n})"
  #n = n + 1 this is the first option to increment
  n += 1
end
puts "\n" * 2

# OR

puts "hey mooooom? can we go to the park?"
mom_says = gets.chomp.downcase

while mom_says == "no" do
  puts "but i waaaaaaant to. [pouts]"
  sleep(2)
  puts "\n" * 3
  puts "how about now?"
  mom_says = gets.chomp.downcase
  end
  until mom_says != "no"
end


#Times Do Loop (this will rarely be used)
puts "~~~~~ Times Do Loop - a preferred method ~~~~~~"
3.times do
  puts "She loves you yeah yeah yeah!"
end
puts "\n" * 2

# real world example
10.times do |x|
  #syntax for creating a new user
end


#Times Do Inline
puts "~~~~~ Inline Times Do ~~~~~~"
3.times { puts "She loves you yeah yeah yeah!" }
puts "\n" * 2


#Inline Up To
puts "~~~~~ Inline Up To ~~~~~~"
1.upto(3) { |n| puts "She loves you yeah yeah yeah! (n = #{n})"}
puts "\n" * 2


# Each Loop Including Bookends
puts "~~~~~ Each Do in a Range (Including the Bookends) PREFERRED WITH ARRAYS ~~~~~~"
(1..3).each do |n|
    puts "She loves you yeah yeah yeah! (n = #{n})"
end
puts "\n" * 2

# or do it with an array to make something happen to each item in the array

to_do = ["wash the car", "buy groceries", "finish your homework", "pay the bills"]
to_do.each do |x|
    puts "Don't forget to #{x}!"
end
puts "\n" * 2


# Each Loop Excluding Bookends
puts "~~~~~ Each Do in a Range (Excluding the Bookends) PREFERRED METHOD  ~~~~~~"
(1...3).each do |n|
    puts "She loves you yeah yeah yeah! (n = #{n})"
end
puts "\n" * 2


# Each Loop on an array
my_array = ["wash the car", "buy groceries", "finish your homework", "pay the bills"]
my_array.each do |x|
    puts "Don't forget to #{x}!"
end
puts "\n" * 2

