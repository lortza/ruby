title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------


word1 = {:word => "apple", :part => "noun", :definition => "a fruit"}
word2 = {:word => "blow", :part => "verb", :definition => "to move something with wind"}
word3 = {:word => "crappy", :part => "adjective", :definition => "generally not good"}

dictionary = [word1, word2, word3]

puts dictionary
