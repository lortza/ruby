# this game asks you for your favorite color and then insults your choice. it uses methods and recursion

def quiz 
  response = gets.chomp.downcase

  if response == "magenta" || response == "fuschia"
    puts "Oh that's a lovely color."
  else
    puts "Really? #{response.capitalize} is such a lame color."
    puts "Would you consider that maybe magenta or fuschia are better options as a favorite color? ( y | n )"
    response = gets.chomp.downcase 
    if response.include? "y"
      puts "Oh thank fuck. You are reasonable after all."
    else
      puts "You're stubborn as a mule AND you have bad taste in colors."
      sleep(3)
      puts
      puts
      puts "Now that you've had time to reconsider, what is your favorite color?"
      quiz
    end
  end
end #quiz


puts "What's your favorite color?"
quiz