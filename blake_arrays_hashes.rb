# blake_arrays_hashes.rb
# This is an array
tools = ["hammer", "screw driver", "drill", "wrench"]

# It is just a list and doesn't have any intelligence aside from the ID number.

# Each item has an item number and it starts with 0. This means to call "hammer", you do this:
tools[0] # calls hammer
tools[3] # calls wrench
tools


#these are my hashes. hashes don't have any sort of ID number.
tool1 = {:name => "hammer", :electricity_needed => "no", :located => "tool belt"}
tool2 = {:name => "screwdriver", :electricity_needed => "no", :located => "tool belt"}
tool3 = {:name => "drill", :electricity_needed => "yes", :located => "case"}
tool4 = {:name => "wrench", :electricity_needed => "no", :located => "tool box"}

# this is an array that pulls in a collection of hashes
toolbox = [tool1, tool2, tool3, tool4]

#this will list each hash in the above array
puts toolbox


# this accesses specifically the 2nd item in the array
puts "The #{toolbox[1][:name].capitalize} is located in the #{toolbox[1][:located]}"


#this will access the details of each hash within that array
toolbox.each do |x|
 puts "i love " + x[:name]

 # or
 puts "The #{x[:name]} is in the #{x[:located]}. "
 puts
end

puts "Brick, are you just looking in arrays and saying you love everything in them?" #tee hee hee...
sleep(3)
puts
puts "[Brick says:] Yes."
puts


