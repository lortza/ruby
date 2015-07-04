puts "\n"
header_size = 80
puts "~" * header_size
puts "And now it's time to play Bar Bouncer...".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: Write a bartender program that asks us our order. 
Then, let’s have it ask how old we are. If you answer 21 or 
over, you’re good to go. If you are under 21, the program 
(bartender) tells you how many years you’ll need to wait until 
you’re legal.

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

puts "Yo, what can I pour for you?"
order = gets.chomp

puts "I'll be glad to pour you some #{order}. Hey what year is it?"
this_year = gets.chomp.to_i

puts "And what year were you born?"
year_born = gets.chomp.to_i

years_old = this_year - year_born
years_left = 21 - years_old

if years_old >= 21
  puts "Since it's #{this_year}, and you're #{years_old} years old, I can serve you that #{order} right now. BRB..."
else 
  puts "Since it's #{this_year}, and you're only #{years_old} years old, you're going to have to wait #{years_left} more years until I can serve that to you. Sorry punk. Now go find a hobby that ain't drankin'."
end

# another version using Time.now and a random year generator for the license year and menu choice

puts "yo. i'm the bartender. what do you want to drink?"
menu = ["beer", "cheap wine", "gin & tonic", "slippery susan", "redheaded slut", "bourbon on the rocks", "vodka tonic", "sarah sippy cup", "flaming ass-grabber", "chardonnay", "merlot", "Clos du Pirque" ]
order = menu.sample
puts
sleep(2)
puts "[orders a #{order}]"
sleep(2)
puts
puts "i'll be glad to get that #{order} for you. now, lemme see that gorgeous ID of yours."

birthyear = 1 + rand(1970..Time.now.year)
sleep(2)
puts
puts "[looks at ID. points to the year #{birthyear}.]"
sleep(3)
puts

yearsold = Time.now.year - birthyear.to_i

if yearsold >= 21
  puts "oh smashing! i have a niece who's #{yearsold} too. brb with that #{order}."
else
  puts "oh shoot, sorry chump. you're only #{yearsold}. i can't serve you here. now go hit up some old people outside the 7/11 for some boones farm."
end #if

