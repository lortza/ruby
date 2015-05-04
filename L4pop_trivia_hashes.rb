#while loop with hashes
puts "\n" * 2
header_size = 80
puts "~" * header_size
puts "L4 Pop Trivia App Using Hashes".upcase.center(header_size)
puts "~" * header_size
puts "\n"


# OUTPUT 1
questions_answers = {"Who sang \"Material Girl\"?" => "madonna", "Who loves tacos?" => "gant", "Which Actor played zoolander?" => "ben stiller"}
puts "~~~"
puts "OUTPUT 1: displays just the questions and the answers"
puts "~~~"
questions_answers.each do |key_question, value_answer| 
  puts "The key is #{key_question} and the value is #{value_answer}."
end
puts "\n"


# OUTPUT 2
questions_answers = {"Who sang \"Material Girl\"?" => "madonna", "Who loves tacos?" => "gant", "Which Actor played zoolander?" => "ben stiller"}
puts "~~~"
puts "OUTPUT 2: displays only 1 randomly selected question and answers it"
puts "~~~"
current_qna = questions_answers.to_a.sample #turns the hash into an array and chooses a random question to ask
current_question = current_qna.first
current_answer = current_qna.last

puts current_question
user_answer = gets.chomp.downcase

if user_answer == current_answer
  puts "Yes!"
  puts "\n"
else
  puts "Nope!"
  puts "\n"
end
puts "\n"



# OUTPUT 3 
questions_answers = {"Who sang \"Material Girl\"?" => "madonna", "Who loves tacos?" => "gant", "Which Actor played zoolander?" => "ben stiller"}
puts "~~~"
puts "OUTPUT 3: displays each trivia question with opportunity to answer and says right or wrong"
puts "~~~"

questions_answers.each do |key_question, value_answer|
  puts key_question
  user_answer = gets.chomp.downcase
  if user_answer == questions_answers[questions_answers.key(value_answer)]
    puts "Correct"
    puts "\n"
  else
    puts "Nope!"
    puts "\n"
  end
end
puts "\n"

#ENDING STATEMENT
puts "++++++++++++++"
puts "  IT'S OVER!  "
puts "++++++++++++++"
puts "\n"
