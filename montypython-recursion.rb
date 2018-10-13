def intro
  puts "STOP!"
  sleep(2) 
  puts "He who would cross the Bridge of Death" 
  puts "must answer me these questions three "
  puts "and the other side ye see..."
  puts "\n"
  sleep(3)
end #intro

def questions
  puts "WHAT..."
  sleep(2) 
  puts "is your name?"
  @user_name = gets.chomp.downcase
  puts "\n"
  puts "WHAT..."
  sleep(2) 
  puts "is your quest?"
  user_quest = gets.chomp.downcase
  puts "\n"
end #questions

def bridge
  sleep(2)
  puts "\n"
  puts "[you get flung off the bridge] aaaaaaaaaah!"
  puts "\n"
end #bridge

def lancelot
  puts "WHAT..."
  sleep(2) 
  puts "is your favorite color?"
  user_color = gets.chomp.downcase
  puts "\n"
  if user_color == "blue"
    puts "Fine. Off you go. :)"
    puts "\n"
  else
    bridge
  end #if 2
  puts "Want to play again? y | n "
  @want_to_play = gets.chomp.downcase
  play_game
end #lancelot

def galahad
  if @user_name.include? "galahad"
    puts "WHAT..."
    sleep(2) 
    puts "is the capital of Assyria"
    user_response = gets.chomp.downcase
    puts "\n"
    if user_response == "ashur"
      puts "Wow you're a serious Monty Python nerd. You're getting flung off the bridge anyway."
      bridge
    else
      bridge
    end
  end #if
  puts "Want to play again? y | n "
  @want_to_play = gets.chomp.downcase
  play_game
end #galahad

def robin
  if @user_name.include? "robin"
    puts "WHAT..."
    sleep(2) 
    puts "is your favorite color?"
    user_color = gets.chomp.downcase
    puts "\n"
    if user_color == "blue"
      puts "Nice try, Sir Robin. That's Sir Galahad's favorite color."
      bridge
    else
      bridge
    end
  end #if
  puts "Want to play again? y | n "
  @want_to_play = gets.chomp.downcase
  play_game
end #robin

def arthur 
  if @user_name.include? "arthur"
    puts "WHAT..."
    sleep(2) 
    puts "is the airspeed velocity of an unladen swallow?"
    user_swallow = gets.chomp.downcase
    puts "\n"
    if (user_swallow.include? "african") or (user_swallow.include? "european")
      puts "Bridgekeeper says: I don't know that! [bridgekeeper gets flung off bridge] aaaaaaaaaah!"
      puts "\n"
      sleep(2)
      puts "I guess you have to know these things when you're a king."
      sleep(2)
      puts "You win, smartypants."
      puts "\n"
    else
      bridge
    end
  end #if
  puts "Want to play again? y | n "
  @want_to_play = gets.chomp.downcase
  play_game
end #arthur

def user
  puts "WHAT..."
  sleep(2) 
  puts "is your favorite color?"
  user_color = gets.chomp.downcase
  puts "\n"
  if user_color == "blue"
    puts "Nice try, #{@user_name.capitalize}, you silly English Kniggit. That is Sir Lancelot's favorite color, not yours. You get flung off the bridge anyway! Ha ha ha ha ha!"
    bridge
    sleep(2)
    puts "If you want to get sneaky, you may want to use the name of one of your actual fellow Knights of the Round Table when you play again."
  else
    bridge
    sleep(2)
    puts "If you want to get sneaky, you may want to use the name of one of your fellow Knights of the Round Table when you play again."
  end
  puts "Want to play again? y | n "
  @want_to_play = gets.chomp.downcase
  play_game
end #user

def play_game
  if @want_to_play.include? "y"
    intro 
    questions 
      if @user_name.include? "lot"
        lancelot 
      elsif @user_name.include? "galahad"
        galahad 
      elsif @user_name.include? "robin"
        robin
      elsif @user_name.include? "arthur"
        arthur  
      else
        user 
      end
  else
    puts "Fine. Off you go then."
  end
end #play_game

title = "Welcome to Monty Python's Bridge of Death"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"

@want_to_play = "y"
play_game
