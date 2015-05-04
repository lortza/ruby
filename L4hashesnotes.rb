# Hash Lesson
puts "\n"
header_size = 80
puts "~" * header_size
puts "L4 Hash Lesson".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2

# a hash is like a dictionary
# "hash" has to be capitalized --> like this Hash

# to create a new hash...
myhash1 = {}

#or
myhash2 = Hash.new

# a key is the category and a value is the thing a person enters
# a key is "name" while a value is "sia"

my_hash = {"name" => "Sia", "hometown" => "Houston", "age" => 21}

#to enter an item into a hash... 

my_hash = {:item1 => 1} #this is the existing hash
my_hash[:item2] = 2 #adds a new item to the hash
my_hash = {:item1=>1, :item2=>2} #new hash looks like this

# to call out a specific value from a hash, call the key in the correct format. 

my_hash = {:item1=>1, :item2=>2} # if the key was formed like this
my_hash[:item2] # call it back out  like this (which yields "2" in this ex)

my_hash = {"name" => "Sia", "hometown" => "Houston"} # if the key was formed like this
my_hash["name"] # call it back out  like this (which yields "sia" in this ex)


#my hash.each {|key, value| puts "The key is #{key} and the value is #{value}."}
# or 
my_hash.each do |x, y| 
  puts "The key is #{x} and the value is #{y}."
end

#this little exercise takes info from hashes, 
#lines them up into an array and then prints the values from the hash

person1 = {:name => "blake", :gender => "dude", :os => "mac", :smoker => "true"}
person2 = {:name => "leigh", :gender => "lady", :os => "pc", :smoker => "true"}
person3 = {:name => "kevin", :gender => "dude", :os => "pc", :smoker => "false"}
person4 = {:name => "cory", :gender => "lady", :os => "mac", :smoker => "false"}

students = [person1, person2, person3, person4]

students.each do |x|
 puts x[:name]
 # or
 puts "#{x[:name]} is a #{x[:gender]} with a #{x[:os]} "
end

