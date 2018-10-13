-------------

-------------

-------------

-------------

-------------

-------------

-------------

-------------

-------------
# using or in a loop

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end

-------------
#99 bottle of beer on the wall

x = 10
while x >= 1 do
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer!"
  x -= 1
  puts "Take one down, pass it around, #{x} bottles of beer on the wall!"
end
while x == 0 do
  puts "No bottles of beer on the wall, no more bottles of beer!"
  puts "Sucks to be you. You're feeling blue. No more bottles of beer on the wall!"
  x-= 1
end
-------------
#elsif in a loop
puts "Welcome to the name judging program. Tell me, what is your name?"
name = gets.chomp.capitalize!
# puts "Hello, " + name.capitalize! + "."
if 
  name == "Anne"
  puts "#{name} with an E even! What a brilliant name!"
elsif 
  name == "Zorro"
  puts "Chuuuuuuuup! Hello litta Z! You are da sweet!"

elsif 
  name == "Meow"
  puts "Chuuuuuuuup! Hello litta Z! You are da sweet!"

 elsif 
  name == "Mike"
  puts "Oh, another '#{name}.' Can we call you 'Michael' instead?"

else
  puts "Malright then... your name's just aiiight, nawmsayin?"
  
end

-------------
#loop echo chamber
puts "Welcome to the echo chamber. Say something and see what happens..."
command = ''

while command != 'bye'
  command = gets.chomp
  puts command
end

puts 'Come again soon!'

-------------
#loop within a loop

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end
-------------
# a histogram

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

-------------
# a multidimensional array

my_array = [["cat", "zorro"], ["cat", "pc"], ["dog", "miko"]]

-------------

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas",
  "Da Lote" => "Anne Richardson",
  "Litta Z" => "Zorro the Cat"
}
secret_identities.each do | hero, person |
    puts "#{hero}: #{person}"
end

-------------
# arrays and hashes

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }
-------------
#table of contents and justification & spacing

lineWidth = 40
puts "Table of Contents".center lineWidth

puts "Preface".ljust  lineWidth
puts "Chapter 1".ljust(lineWidth/2) + "Page 01".rjust(lineWidth/2)
puts "Chapter 2".ljust(lineWidth/2) + "Page 30".rjust(lineWidth/2)
puts "Chapter 3".ljust(lineWidth/2) + "Page 60".rjust(lineWidth/2)
-------------

#angry boss program

puts "What is your request? "
user_input = gets.chomp

puts "Oh, '#{user_input}'??? Tough shit. You're fired!".upcase

--------------
# centers text
linewidth = 50
puts("old mother hubbard".center(linewidth))
puts("sat in her cupboard".center(linewidth))
puts("eating her curds and whey".center(linewidth))
puts("old".center(linewidth))
puts("flashy flash pants".center(linewidth))

----------------
#counts characters in a name and adds them all together. 

puts 'Hello there, and what\'s your first name?'
first = gets.chomp.capitalize!

puts 'middle?'
middle = gets.chomp.capitalize!

puts 'last?'
last = gets.chomp.capitalize!

puts 'Your name is ' + first + ' ' + middle + ' ' + last + '?  What a lovely name!'
puts 'Pleased to meet you, ' + first + '.  :)'

---------------------
# calculates seconds, years, and death

print "How many years old are you? "
years_old = gets.chomp
result = years_old.to_i * 365 * 24 * 60 * 60
puts 'You have lived ' + result.to_s + ' seconds in your ' + years_old + ' years!'

print "At what age do you think you'll die? "
age_at_death = gets.chomp
years_left = age_at_death.to_i - years_old.to_i
puts 'This means you have ' + years_left.to_s + ' years left to live.'

chunks = years_left.to_i / 5
puts 'Or rather, ' + chunks.to_s + ' chunks of 5 years to do something meaningful.'

----------------------
# converts years old to seconds old

puts "How many years old are you? "
years_old = gets.chomp
years_to_seconds = 365 * 24 * 60 * 60

puts years_old.to_i * years_to_seconds.to_i

-------------------

print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"


------------------

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts x
end

odds = [1,3,5,7,9]

odds.each { |x|
  x *= 2
  print "#{x}" 
}


--------------------
# prints all numbers 1-50, including 50

i = 1
while i <= 50 do
    print i
    i += 1
end


# prints all numbers 1-50, including 50
j = 1
until j == 51 do
    print j
    j += 1
end


# prints all numbers 1-50, including 50
for k in 1..50
  print k
end


---------------------
# does a loop for 30 times and then stops with a break

counter = 0
loop do 
	counter += 1
	puts "Ruby!"
	break if counter >= 30
end


---------------------------
#censorship

puts "Text to search through: "
text = gets.chomp
puts "Word to censor: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end