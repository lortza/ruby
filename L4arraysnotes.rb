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


