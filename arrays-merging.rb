#http://www.codequizzes.com/intermediate-ruby/array-methods-practice

#Create an array of all the elements that are in first, but not in second.
first = ["cool", "busta", "odb"]
second = ["puffy", "cool", "busta"]

difference = first - second
puts difference

#merge the two arrays without creating duplicates
merged = (first + second).uniq
puts merged