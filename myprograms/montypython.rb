# explanation: i first defined playing the game, then called 
# that method on a bs variable within a while loop and had it terminate 
# when "want_to_play" = no

want_to_play = "yes"

def play_game(x)
  #game title
    title = "Welcome to Monty Python's Bridge of Death"
    maxlength = title.length.to_i + 6
    puts "\n"
    puts "~" * maxlength
    puts title.upcase.center(maxlength)
    puts "~" * maxlength
    puts "\n"

  # actual game play
    puts "STOP!"
    sleep(2) 
    puts "He who would cross the Bridge of Death" 
    puts "must answer me these questions three "
    puts "and the other side ye see..."
    puts "\n"
    sleep(5)

    puts "WHAT..."
    sleep(2) 
    puts "is your name?"
    user_name = gets.chomp.downcase
    puts "\n"

    puts "WHAT..."
    sleep(2) 
    puts "is your quest?"
    user_quest = gets.chomp.downcase
    puts "\n"

    # third question changes based on character name
    if user_name.include? "lot"
      puts "WHAT..."
      sleep(2) 
      puts "is your favorite color?"
      user_color = gets.chomp.downcase
      puts "\n"
      if user_color == "blue"
        puts "Fine. Off you go. :)"
        puts "\n"
      else
        puts "[you get flung off the bridge] aaaaaaaaaah!"
        puts "\n"
      end
    elsif user_name.include? "galahad"
      puts "WHAT..."
      sleep(2) 
      puts "is the capital of Assyria"
      user_response = gets.chomp.downcase
      puts "\n"
      if user_response == "ashur"
        puts "Wow you're a nerd. [you get flung off the bridge anyway] aaaaaaaaaah!"
        puts "\n"
      else
        puts "[you get flung off the bridge] aaaaaaaaaah!"
        puts "\n"
      end
    elsif user_name.include? "robin"
      puts "WHAT..."
      sleep(2) 
      puts "is your favorite color?"
      user_color = gets.chomp.downcase
      puts "\n"
      if user_color == "blue"
        puts "Nice try, Sir Robin. Your favorite color is red. [gets flung off bridge] aaaaaaaaaah!"
        puts "\n"
      else
        puts "[you get flung off the bridge] aaaaaaaaaah!"
        puts "\n"
      end
    elsif user_name.include? "arthur"
      puts "WHAT..."
      sleep(2) 
      puts "is the airspeed velocity of an unladen swallow?"
      user_swallow = gets.chomp.downcase
      puts "\n"
      if user_swallow.include? "african or european"
        puts "I don't know that! [bridgekeeper gets flung off bridge] aaaaaaaaaah!"
        puts "\n"
        sleep(2)
        puts "I guess you have to know these things when you're a king."
        sleep(2)
        puts "You win, smartypants."
        puts "\n"
      else
        puts "[you get flung off the bridge] aaaaaaaaaah!"
        puts "\n"
      end
    else
      puts "WHAT..."
      sleep(2) 
      puts "is your favorite color?"
      user_color = gets.chomp.downcase
      puts "\n"
      if user_color == "blue"
        puts "Nice try, #{user_name.capitalize}, you silly English Kniggit. [gets flung off the bridge] aaaaaaaaaah!"
        puts "\n"
        puts "If you want to get sneaky, you may want to use the name of one of your fellow Knights of the Round Table when you play again."
      else
        puts "[you get flung off the bridge] aaaaaaaaaah!"
        puts "\n"
        puts "If you want to get sneaky, you may want to use the name of one of your fellow Knights of the Round Table when you play again."
      end
    end #end big if loop
end # ends play_game method


# apply that action to a base number
base = 0

while  want_to_play == "yes" do 
  play_game(base)
  puts "Want to play again?"
        want_to_play = gets.chomp.downcase
        puts "\n" *2
  end
  until want_to_play == "no"
  end

if want_to_play == "no"
  puts "Fine. Off you go then."
end