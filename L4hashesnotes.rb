# Hash Lesson
puts "\n"
header_size = 80
puts "~" * header_size
puts "L4 Hash Lesson".upcase.center(header_size)
puts "~" * header_size
puts "\n" * 2

# "hash" has to be capitalized --> like this Hash

# to create a new hash...
myhash1 = {}

#or
myhash2 = Hash.new #Hash is a class that creates an object

# a key is the category and a value is the thing a person enters
# a key is "name" while a value is "sia"

my_hash = {"name" => "Sia", "hometown" => "Houston", "age" => 21} #gant does not like using this syntax, b/c there is no symbol. if you can use symbols, use symbols. use this syntax only when you have to break the rules.
my_hash = {name: "Sia", hometown: "Houston", age: 21} #new syntax example that is user-friendly, but will convert to the next one below
my_hash = {:name => "Sia", :hometown => "Houston", :age => 21} #the classic syntax using the key as a symbol



#to enter an item into a hash... 

my_hash = {:item1 => 1} #this is the existing hash
my_hash[:item2] = 2 #adds a new item to the hash
my_hash = {:item1=>1, :item2=>2} #new hash looks like this

# to call out a specific value from a hash, call the key in the correct format. 

my_hash = {:item1=>1, :item2=>2} # if the key was formed like this
my_hash[:item2] # call it back out  like this (which yields "2" in this ex)

my_hash = {"name" => "Sia", "hometown" => "Houston"} # if the key was formed like this
my_hash["name"] # call it back out  like this (which yields "sia" in this ex)
my_hash[:name] # call it back out  like this (which yields "sia" in this ex)

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


# this is an exercise in pulling the info back out of the array of hashes
tool1 = {:name => "hammer", :electricity_needed => "no", :located => "tool belt"}
tool2 = {:name => "screw driver", :electricity_needed => "no", :located => "tool belt"}
tool3 = {:name => "drill", :electricity_needed => "yes", :located => "case"}
tool4 = {:name => "wrench", :electricity_needed => "no", :located => "tool box"}

# this is an array that pulls in a collection of hashes
toolbox = [tool1, tool2, tool3, tool4]

# user_answer == questions_answers[questions_answers.key(value_answer)]

puts "#{toolbox[1][:name].capitalize} is located at #{toolbox[1][:located]}"


