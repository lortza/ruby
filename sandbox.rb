title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------

# can we have a cat?

# puts "can we have a cat?"
# response = gets.chomp.downcase

# while response.include? "no"
#     if response.include? "no"
#       puts "how about now?"
#       response = gets.chomp.downcase
#     elsif response.include? ("yes" or "fine" or "maybe" or "ask your father" or "ask your mother")
#       puts "YAY!"
#     else
#       puts "so is that a yes?"
#       response = gets.chomp.downcase
#     end#if
# end#while
  





# person = {:first => "first name", :last => "last name", :pet_breed => "breed", :qty_pets => 5}


# puts "Hello. what's your first name?"
# firstname = gets.chomp.capitalize
# person[:first] = firstname

# puts "What's your last name?"
# lastname = gets.chomp.capitalize
# person[:last] = lastname

# puts "What type of pet do you have, #{person[:first]}?"
# pet = gets.chomp.downcase
# person[:pet_breed] = pet

# puts "How many #{person[:pet_breed]}s do you have?"
# qty = gets.chomp.to_i
# person[:qty_pets] = qty

# puts "Hi #{person[:first]} #{person[:last]}. I am glad to hear you have #{person[:qty_pets]} #{person[:pet_breed]}s."

# puts person


# ---------------------------
# classroom = ["Kevin", "Leigh", "Blake", "Robert", "Sabrina", "Anne", "Cory"]
# puts classroom.join(', ')

puts "hey it's time to make those pesky secret santa assignments."
puts "don't worry, i can do it for you."
puts
puts "please enter the name of each participant one at a time."
puts "when you're finished, type \"done\"."

entries = []
name_entry = gets.chomp.downcase

while name_entry != "done"
  entries.push(name_entry)
  name_entry = gets.chomp.downcase
end#while
until name_entry == "done"
  end

if name_entry == "done"
  puts "you've entered #{entries.join(", ")}"
end#if


# D3yV6yXnqPOR







