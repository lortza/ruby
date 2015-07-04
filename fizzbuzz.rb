# this is the classic job interview question

# count to 100
# if the number is divisible by 3, print "fizz"
# if the number is divisible by 5, print "buzz"
# if it is divisible by both, print FizzBuzz"
# otherwise, just print the number

(1..30).each do |x|
  if ((x % 3 == 0) and (x % 5 == 0))
    puts "#{x} - fizzbuzz by 3 and 5"
  elsif 
      x % 3 == 0
    puts "#{x} - fizz by 3"
  elsif x % 5 == 0
    puts "#{x} - buzz by 5"
  else
    puts x
  end #if    
end #each


# here's a variation using arrays and only calling fizzbuzz

range = (1..100).to_a
fizzbuzz = []

range.each do |x|
  if (x % 3 == 0) and (x % 5 == 0)
    fizzbuzz.push(x)
  end
end

print fizzbuzz

# here's a variation that pushes all three sets into different arrays and putss them

range = (1..30)
fizzbuzz = []
fizz = []
buzz = []

range.each do |x|
  if x % 3 == 0 && x % 5 == 0
    fizzbuzz.push(x)
  elsif x % 3 == 0
    fizz.push(x)
  elsif x % 5 == 0
    buzz.push(x)
  end #if
end #each

puts "Threes: #{fizz}"
puts "Fives: #{buzz}"
puts "Both: #{fizzbuzz}"


#here's a variation using methods and instance variables

def fizzbuzz
  puts "#{@x} -- FIZZBUZZ"
end

def fizz
  puts "#{@x} -- FIZZ"
end

def buzz
  puts "#{@x} -- BUZZ"
end


for @x in 1..15
  if @x % 3 == 0 && @x % 5 == 0
    fizzbuzz
  elsif @x % 3 == 0
    fizz
  elsif @x % 5 == 0
    buzz 
  else
  end #if
end #for


