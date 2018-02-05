header_size = 80
puts "~" * header_size
puts "We're going to Count Your Characters!".center(header_size)
puts "~" * header_size
puts "\n" * 2

puts "What's your first name, doll?"
first = gets.chomp.capitalize

puts "Oh, #{first}? That's lovely. Now what's your last name, doll?"
last = gets.chomp.capitalize


character_count = first.length + last.length

puts "Perfect. Pleased to meet you, #{first} #{last}. There are #{character_count} characters in your name."