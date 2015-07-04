casestatement.rb

# gives you a specific greeting based on the time of day


# gets current time in 24 hour format for case statements
current = Time.now.hour

# gets current time in 12 hour format for display
display = Time.now.strftime("%I:%M %p")

case # written in 24 hour format
when current >= 1 && current < 6
  puts "Buen Madrugada! It's #{display}."
when current >= 6 && current < 12
  puts "Good Morning! It's #{display}."
when current >= 12 && current <= 16
  puts "Good Afternoon. It's #{display}."
when current > 16 && current <= 19
  puts "Good Evening. It's #{display}."
when current > 19
  puts "Lovely Night, ennit? It's #{display}."
end #case