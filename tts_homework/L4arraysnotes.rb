# Arrays Lesson
puts "\n"
header_size = 80
puts "~" * header_size
puts "L4 Arrays Lesson".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2

#An array is a variable with []
my_array = []

# dogs = ["name 1", "name 2", 87, "x"]
# indexed    0          1      2    3
# OR        -4         -3     -2   -1

# To add things to arrays, do this
my_array[0] = "apple"
my_array[1] = "taco"

#therefore...
my_array = ["apple", "taco"]

#an array inside an array would look like this
my_array = ["apple", "taco", ["sangria", "tequila", "margarita"]]

#and to call tequila...
my_array[2][1]

#two more ways to add items to an array is via "push" or via <<
dogs = []
dogs.push("Spot")
dogs << "Fido"

#so the array now looks like
dogs = ["Spot", "Fido"]

classroom = ["Kevin", "Leigh", "Blake", "Robert", "Sabrina", "Anne", "Cory"]

#we can do things to the items in the string like...
.reverse
.sort (alpha)
.shuffle (random)

#we can also add and subtract numbers
[1,2,3,4] - [2,4]
#will yield
[1,3]

# and
[1,2,3,4] + [2,4]
# will yield
[1,2,3,4,2,4]

classroom = ["Kevin", "Leigh", "Blake", "Robert", "Sabrina", "Anne", "Cory"]

classroom.each do |x|
  if x == classroom[-1]
    print "#{x}."
  else
    print "#{x}, "
  end#if
  
end #each

# this will yield
# Kevin, Leigh, Blake, Robert, Sabrina, Anne, Cory.


scores = [100, 300, 150, 50]
counter = 0
sum = 0

while counter < scores.length 
  sum = sum + scores[counter] # "counter" in this line is a variable for the array ID location number
  counter += 1 # same as counter = counter + 1
end

puts "The total is #{sum}"
puts "The average is #{sum/4}"

# another similar option for getting a sum and an average...

array = [100, 100, 100]
sum_catcher = 0
array.each do |n| 
  sum_catcher += n #this adds each number in the array to the sum_catcher variable
end

puts sum_catcher
puts sum_catcher / array.length #this divided the final sum by the number of items in the original array


#-------------------------
# this pushes a result of the each do into a separate array

array1 = ["britt", "jemaine", "murray"]
array2 = []

array1.each do |x|
  array2.push(x + "'s a person")
end

puts array2.join(", ")

#outputs: britt's a person, jemaine's a person, murray's a person


#---------

colors = ['red', 'violet', 'blue']
result = []

colors.each_with_index do |x, index|
  result.push([x, index +1])
end

print result
# this yields
[["red", 1], ["violet", 2], ["blue", 3]]

# another way to create a range

allnum = (1..5).to_a
puts allnum.to_s

#yields
[1, 2, 3, 4, 5]

#-------------
#This puts two arrays together, making 52 unique pairs from the list of numbers and suits.
puts result.to_s
#yields

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']
deck = []

suits.each do |s|
  numbers.each do |n|
    deck << [s, n] #<-- notice how you need the brackets as part of the code in order to get the brackets in the result
    puts "#{n} of #{s}"
  end#numbers
end#suits

puts "there are #{deck.length} cards in the deck and they are:"
puts deck.to_s

#yields
there are 52 cards in the deck and they are:
[["spades", "2"], ["spades", "3"], ["spades", "4"], ["spades", "5"], ["spades", "6"], ["spades", "7"], ["spades", "8"], etc.

# -----------
# this will sort pull out items from an array based on the character content of the item

array = ["snake", "rat", "cat", "dog"]
array.each do |x|
  puts x if x[1] == "a" # this looks for the 2nd character (position 1) and pulls is out if == "a"
end

#yields
rat
cat

#-------

# searching for specific text in an array

days = ['mon', 'tues', 'wed', 'thur', 'fri']

puts days.values_at(0, 2)
#yields
mon, wed

puts days.grep /t/
#yields
tues, thurs

