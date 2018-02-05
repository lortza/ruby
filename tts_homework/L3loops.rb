
header_size = 80
puts "~" * header_size
puts "Welcome to Soosami Street".center(header_size)
puts "~" * header_size
puts "\n" * 2

laugh = "HAHAHAHAHA!"
puts "1 Fun Fact - #{laugh}"


# here's one way to make a loop
for n in 2..10
  # puts n.to_s + " Fun Facts - Muhahahahaha!"
  puts "#{n} Fun Facts - #{laugh}"
end

puts "\n" * 2

10.times do |n|
  puts "#{n +1} Fun Facts - #{laugh}"
end

puts "\n" * 2

puts "1 Nacho - #{laugh}"
2.upto(10) do |n|
  puts "#{n} Nachos - #{laugh}"
end

puts "\n" * 2

#another way to roll that one above is like this

loop_count = 10
puts "1 Nacho - #{laugh}"
2.upto(loop_count) do |n|
  puts "#{n} Nachos - #{laugh}"
end


# Loops that are shunned
# for loops
# while loops
# until loops


puts "\n" * 2


# (1..loop_count).each do |n|  THIS CALLS N ON 1..LOOP_COUNT
# 1..(loop_count).each do |n| THIS CALLS N ON JUST LOOP_COUNT

puts "1 kernal of g00d - #{laugh}"
(2..loop_count).each do |n|
  puts "#{n} kernals of g00d - #{laugh}"
end

# Any do/end can be replaced with {} but this is looked down upon

(7..loop_count).each {|n| puts n }

