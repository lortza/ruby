title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------


# word1 = {:word => "apple", :part => "noun", :definition => "a fruit"}
# word2 = {:word => "blow", :part => "verb", :definition => "to move something with wind"}
# word3 = {:word => "crappy", :part => "adjective", :definition => "generally not good"}

# dictionary = [word1, word2, word3]

# puts dictionary


puts "oh hi. i want to go to the park and i don't want to do anything else."
sleep(2)
puts "go on. tell me to do something."
chore_input = gets.chomp.downcase

puts "I don't want to #{chore_input}. I want to go to the park."
puts "Can we go to the park?"
park_response = gets.chomp.downcase

if park_response.include? "yes"
  puts "yayayayayay! You said YES! I'm going to the park!"
elsif park_response.include? "fine"
  puts "yayayayayay! I'm going to the park!"
elsif park_response.include? "maybe"
  puts "yayayayayay! I'm going to the park!"
elsif  
  while park_response.include? "no" do
    puts "Fine. What can I do?"
    chore_input = gets.chomp.downcase
    puts "I don't want to #{chore_input}. I want to go to the park."
    puts "Can we go to the park?"
    park_response = gets.chomp.downcase
    end
  else
    # until park_response != "no"
    puts "yayayayayay! I'm going to the park!"
  end




