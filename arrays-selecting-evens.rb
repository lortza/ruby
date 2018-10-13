# select only the even numbers from this array

fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]
evens = []

#solution 1
fav_numbers.each do |x|
  if x % 2 == 0
    evens << x
  end
end

#solution 2
fav_numbers.each do |x|
  if x.even?
    evens << x
  end
end
puts evens

#solution 3
fav_numbers.select do |x|
  if x.even?
    evens << x
  end
end
puts evens

#solution 4 - this one assigns a variable to the output of this select, which is actually an array. holy crap that's elegant. 
evens = fav_numbers.select {|x| x.even? }
puts evens