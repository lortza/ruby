puts "\n"
header_size = 80
puts "~" * header_size
puts "And now it's time to math off...".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: 5. Bonus!

Add at least one new feature to your pop trivia app.  
For example, keep a score, ask all questions, provide categories.


art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================



game = {"Who sang \"Material Girl\"?" => "madonna", "Who loves tacos?" => "gant", "Which Actor played zoolander?" => "ben stiller"}
puts "~~~"
puts "OUTPUT 3: displays each trivia question with opportunity to answer and says right or wrong"
puts "~~~"

scorepad = []

game.each do |key_question, value_answer|
  puts key_question
  user_answer = gets.chomp.downcase
  if user_answer == game[game.key(value_answer)]
    puts "Correct"
    puts "\n"
    scorepad.push(1)
  else
    puts "Nope!"
    puts "\n"
  end
end
puts "\n" * 2

puts scorepad.length