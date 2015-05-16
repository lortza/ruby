# user enters the start & end numbers of a range. the app will tell you which of those numbers is divisible by both 3 and 5 and then gives you a sum of all of those numbers

puts "hey gimme a starting number"
starter = gets.chomp.to_i

puts "now gimme an ending number"
ender = gets.chomp.to_i

puts "now i will tell you the numbers in that range that are divisible by both 3 and 5"
sleep(1)

fizzbuzz = []

(starter..ender).each do |x|
  if ((x % 3 == 0) and (x % 5 == 0))
    fizzbuzz.push(x)
  end #if    
end #each

puts "those numbers are #{fizzbuzz.to_s}"

sum_catcher = 0

fizzbuzz.each do |x|
  sum_catcher += x
end

puts "the sum of those numbers is #{sum_catcher}."


#---------------------------------
# this app will take a list of user-generated numbers and add them.

puts "welcome to the calcualtor app."
puts "please enter each number one at a time."
puts "when you're finished, type \"done\"."

entries = []
number_entry = gets.chomp

while number_entry != "done"
  entries.push(number_entry)
  number_entry = gets.chomp
end#while
until number_entry == "done"
  end


if number_entry == "done"
  puts "you've entered #{entries}"
  # puts "you've entered #{entries.join(", ")}"

end#if

counter_var = 0
sum_var = 0

entries = entries.map(&:to_i) #converts string numbers into integers

while counter_var < entries.length #knows if the array is empty
  sum_var = sum_var + entries[counter_var]
  counter_var += 1 # same as counter = counter + 1
end

puts "The total is #{sum_var}"
puts "The average is #{sum_var/entries.length}"

#---------------------
# this will take user input of a birthday, subtracts it from a date, then gives birithday spanks according to how old the person is

puts "month"
month = gets.chomp

puts "day"
day = gets.chomp

puts "year"
year = gets.chomp

user_bday = Time.mktime(year, month, day)
today = Time.now
# today = Time.mktime(2015, 5, 11)
difference_seconds = today - user_bday
difference_years = difference_seconds / 60 / 60 / 24 / 365

def spank years #this is a method that we'll call on later
  puts "spank! ".upcase * years
end

puts "You were born on #{user_bday}, which was #{difference_seconds.to_i} seconds (#{difference_years.to_i} years) ago today."
sleep(3)
puts "This means you get #{difference_years.to_i} birthday spanks!"
sleep(2)
puts "Ready?"
sleep(2)
puts spank difference_years.to_i #ooh look at this method just going to town!

#----------------------
# set of dice that roll and then give you a total

class Die
  def roll
    1 + rand(6)
  end#def
end #class

die1 = Die.new
die2 = Die.new
die3 = Die.new

dice = [die1, die2]

scorepad = 0

dice.each do |x|
  x = x.roll.to_i #rolls each die and turns it into an integer
  puts x #displays the value of the roll
  scorepad = x + scorepad #adds each roll to the scorepad and redefines the scorepad as having that roll in it
end# each do
  puts "---"
  puts scorepad

  #------------------------


