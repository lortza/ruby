#while loop with arrays
puts "\n"
header_size = 80
puts "~" * header_size
puts "L4 Loopy Arrays".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2


#
scores = [100, 80, 75, 93, 50]
counter = 0
sum = 0

while counter < scores.length
  sum += scores[counter]
  counter += 1
end
puts "The sum of #{scores} is #{sum}."
puts "The sum of " + scores.to_s + " is " + sum.to_s + "." #you can also do it this way, but it sucks. 
puts "\n" * 2


#each loop with arrays  << This is the [PREFERRED method]
scores = [100, 80, 75, 93, 50]
counter = 0
sum = 0

sum_eachloop = 0

scores.each do |n|
  sum_eachloop += n
  puts "The loop is on score #{n}"
end

puts "The sum using each loop is #{sum_eachloop}."
puts "\n" * 2

#this version will also calcualte the average
scores = [100, 80, 75, 93, 50]
counter = 0
sum = 0

sum_eachloop = 0

scores.each do |n|
  sum_eachloop += n
  puts "The loop is on score #{n}"
end

puts "The sum using each loop is #{sum_eachloop}."
puts "The average is #{sum_eachloop/scores.length}."
puts "\n" * 2



