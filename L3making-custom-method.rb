def tempcheckloop(x) #we're making a method called "tempcheckerloop" and building 
                      # based on how we're treating x (which will become the user's input)
  if x >= 50 #if the user's input temp is 50+, then do this...
     puts "#{x} degrees is perfect for hiking!"
  end

  if x < 50 # if the user's input temp is 49 or below, do this...
     puts "#{x} degrees is WAY too cold for hiking!"
  end
end #close the method we're defining

puts "what's the temp, brah?" # ask for user's input
user_input = gets.chomp.to_i # store user's input in a variable called "user_input"

puts tempcheckloop(user_input) # run the method we just defined on the user's 
                               # input and display it on the screen


#another example
def calculate_average(a, b, c, d)
  total = a + b + c + d
  avg = total / 4
end

number1 = gets.chomp.to_f
number2 = gets.chomp.to_f
number3 = gets.chomp.to_f
number4 = gets.chomp.to_f
puts "---------------------"
puts calculate_average(number1, number2, number3, number4)
