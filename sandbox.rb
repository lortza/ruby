title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------

#these are my hashes
word1 = {:word => "apple", :part => "noun", :definition => "a fruit"}
word2 = {:word => "blow", :part => "verb", :definition => "to move something with wind"}
word3 = {:word => "crappy", :part => "adjective", :definition => "generally not good"}

#this is an array that i am bringing in those hashes
dictionary = [word1, word2, word3]

puts dictionary

dictionary.each do |x|
 puts "heeeey, #{x}."
  
end


# This is an array
tools = ["hammer", "screw driver", "drill", "wrench"]

# It is just a list and doen't have any intelligence aside from the ID number.

# Each item has an item number and it starts with 0. This means to call "hammer", you do this:
tools[0] # calls hammer
tools[3] # calls wrench


#these are my hashes. hashes don't have any sort of ID number.
tool1 = {:name => "hammer", :electricity_needed => "no", :located => "tool belt"}
tool2 = {:name => "screw driver", :electricity_needed => "no", :located => "tool belt"}
tool3 = {:name => "drill", :electricity_needed => "yes", :located => "case"}
tool4 = {:name => "wrench", :electricity_needed => "no", :located => "tool box"}

# this is an array that pulls in a collection of hashes
toolbox = [tool1, tool2, tool3, tool4]
