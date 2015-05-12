puts "\n" * 2
header_size = 80
puts "~" * header_size
puts "L4 Secret Santa App".upcase.center(header_size)
puts "~" * header_size
puts "\n"

my_str = <<-art
Assignment: Write a Secret Santa app that takes a list 
of people and outputs matches for Secret Santa gift-giving.
art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

# in people terms...
# gather names
# put names in a hat
# mix up the names in the hat
# of those names, assign a giver
# assign a receiver to each giver
# the giver can't be the receiver

# classroom = ["Kevin", "Leigh", "Blake", "Robert", "Sabrina", "Anne", "Cory"]

# # ask for names
# puts "Hey it's time to make those pesky secret santa assignments."
# puts "We'll use virtual scraps of paper and a virtual hat."
# sleep (2)
# puts
# puts "Please enter the name of each participant one at a time."
# puts "When you're finished, type \"done\"."

# #gather names into an array
# collection_hat = []
# name_entry = gets.chomp.downcase

# while name_entry != "done"
#   collection_hat.push(name_entry)
#   name_entry = gets.chomp.downcase
# end#while
# until name_entry == "done"
#   end

# # display names that have been entered
# if name_entry == "done"
#   puts "You've entered #{collection_hat.join(", ")}"
# end#if

names = ["Kevin", "Leigh", "Blake", "Robert", "Sabrina", "Anne", "Cory"]
puts "NAMES ENTERED:"
puts names
puts
puts "NAMES SHUFFLED:"
names = names.sort{rand}
puts names.to_s

results = []

names.each do |x|
  results.push(x, ) #<-- stopped here
end#names.each

puts
puts "RESULTS:"
puts results


# my_array[0] = "apple"
# dogs.push("Spot")
# dogs << "Fido"

# << [x, collection_hat[counter]]


#  I took an easy way out.  First I loaded my array of names, which was called "names".  Then I randomized the array using "names = names.sort{rand}".  There are a couple of different ways to do the randomization -- don't forget the !bang option on some of them.  Then I just did loop where #1 gave gift to #2; #2 gave gift to #3; #3 gave gift to #4;  ... #n gave gift to #1.

# [8:59 PM] Robert Turner: Since I had randomized the array, then it didn't matter that I just assigned names sequentially.  This worked with a pretty simple Secret Santa, where there were no other constraints.  


