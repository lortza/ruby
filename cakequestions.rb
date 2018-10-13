print "What does little Allie Brosh say when she wants to eat her grandpa's birthday cake? "
user_input = gets.chomp

if user_input.include? "cake"
	user_input.upcase!
	25.times {print "CAKE!"}
	puts " Ohhh fercute! You got it right!"
else
  puts "Nope! Try this one."
end

print "What does little Allie Brosh say when she wants to go to the party after the trip to the dentist? "
user_input = gets.chomp

if user_input.include? "parp"
	user_input.upcase!
	25.times {print "#{user_input}!"}
	puts " LOL, that's totes what she says! You're a Brosh trivia machine!"
else
  puts "Nope! She says 'PARP!' because she wants to prove to her mom that if she can run around the park, she's well enough to go to the birthday party."
end