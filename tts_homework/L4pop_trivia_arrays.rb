#while loop with arrays
puts "\n" * 2
header_size = 80
puts "~" * header_size
puts "L4 Pop Trivia App Using Arrays".upcase.center(header_size)
puts "~" * header_size
puts "\n"




#first option
questions = ["Who sang \"Material Girl\"?", "Who loves tacos?", 
  "Which Actor played zoolander?"]
answers = ["madonna", "gant", "ben stiller"]

i = 0
while i < questions.length
  puts questions[i]
  answer = gets.chomp.downcase
  if answer == answers[i]
    puts "You are correct"
  else
    puts "Sorry! WROOOOONG!"
  end
  i += 1
end
puts "\n" * 2


#another option
questions = ["Who sang \"Material Girl\"?", "Who loves tacos?", 
  "Which Actor played zoolander?"]
answers = ["madonna", "gant", "ben stiller"]

questions.each do |n|
  puts n
  user_answer = gets.chomp.downcase
  if user_answer == answers[questions.index(n)]
    puts "Correct"
  else
    puts "Nope!"
  end
end
puts "\n" * 2



