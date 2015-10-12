def play_game
   puts "OMG we're PLAYING!"
   play_again_query
end #play_game

def play_again_query
  puts "Play again? Y | N?"
  @input = gets.chomp.upcase 
  if @input == "Y"
    play_game
  elsif @input == "N"
    puts "Okay Bye."
  else
    while @input != "N" && @input != "Y"
      puts "I'm sorry, that's not an option."
      play_again_query
    end #while
  end #if
end #play_again_query

play_game


