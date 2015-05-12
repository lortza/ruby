#creating your own method is like creating your own verb. you can decide on a series of action and then call that series (method) on something.

# https://pine.fm/LearnToProgram/chap_08.html

puts "gimmme a number"
user_input = gets.chomp.to_i 

def saymoo x
  puts "mooooo... " * x
  
end

puts saymoo user_input #here we're calling saymoo on user_input. if user

#if user_input is 5, this will output 
"moooooooo moooooooo moooooooo moooooooo moooooooo"