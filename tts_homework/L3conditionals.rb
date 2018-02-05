title = "  Welcome to My Awesome Temperature Commentary Program  "
title_length = title.length.to_i
puts "~" * title_length
puts title
puts "~" * title_length

puts "What's today's temp outside?"
todays_temp = gets.chomp.to_i

puts "It's the meaning of life" if todays_temp == 42

# if todays_temp > 60
#   puts "I'm going outside, bitches!"
# elsif todays_temp > 50
#   puts "If you're headed out, you're going to want to bring a jacket."
# elsif todays_temp > 40
#   puts "It's kind of crappy outside. You may want to stay inside"
# else
#   puts "Noooope. Not going anywhere."
# end


# to make this neater, we'll build a case
case todays_temp
  when 80..100
    puts "Go swimming!"
  when 50..80
    puts "Go hiking!"
  when 40..50
    puts "Stay at home and eat cheese."
  when 30..40
    puts "Stay in bed."
  when  0..30
    puts "You may want to buy a snow shovel."
  else
    puts "You might not actually be on Earth??"
end






