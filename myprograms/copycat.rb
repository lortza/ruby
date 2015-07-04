maxlength = 80
title = "And Now it's time to play the copycat game"
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"

#------CODES-THAT-WILL-BLOW-YOUR-MIND---------



puts "You know I'm going to repeat everything you say until you admit you're a dummy by typing 'I'm a dummy.'"
puts "Go on. Test me. Say something."
response = gets.chomp.downcase

while response != "i'm a dummy" do 
  puts "#{response.upcase}"
  response = gets.chomp.downcase
  end
  until response == "i'm a dummy"   
end

if response == "i'm a dummy" 
puts "HA HA! You're a DUMMY!"
end

#another version with a simpler until loop
puts "heeeeeey! you're a dummy! i'm totally going to copy everything you say and there's notihng you can do about it unless you admit you're a dummy! LOL. go on say something."
response = gets.chomp.downcase
  until response.include? "i'm a dummy" or response.include? "i admit it" 
    puts "#{response.upcase}!"
    puts
    response = gets.chomp.downcase
  end
puts "."
sleep(1)
puts ".."
sleep(1)
puts "..."
sleep(1)
puts "...."
sleep(1)
puts "....."
sleep(1)
puts "HA HA! You're a DUMMY! LOL. kbai."

# different program here:

puts "\n" * 2
puts "~~~~~~~~~ new program ~~~~~~~~~~~~"
puts "\n" * 2


puts "hey mooooom? can we go to the park?"
mom_says = gets.chomp.downcase

while mom_says == "no" do
  puts "but i waaaaaaant to. [pouts]"
  sleep(2)
  puts "\n" * 3
  puts "how about now?"
  mom_says = gets.chomp.downcase
  end
  until mom_says != "no"
end

if mom_says != "no"
  puts "yayyayayayayaayy!"
end


puts "\n" * 3
puts "--------THANKS LET'S TRY ANOTHER--------"
puts "\n"



puts "say something and i will copy you until you say the secret word (zorrocat)."
user_input = gets.chomp.downcase

while user_input != "zorrocat" do
  puts "#{user_input.upcase}!"
  puts "\n"
  user_input = gets.chomp.downcase
end
  until user_input == "zorrocat"
end

if user_input == "zorrocat"
  puts "okay you win. kbai!"
  end

puts "\n" * 3
puts "--------THANKS LET'S TRY ANOTHER--------"
puts "\n"


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


