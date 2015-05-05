#1 
# Review Write a script that takes user input and passes it to a method as an argument and then displays it into the following concatenated string.
"Hello (name).  Nice to meet you."

puts "what's your name, brah?"
name = gets.chomp.capitalize
puts "Hello #{name}. Nice to meet you."


# ---------------
# 2
# Correct the code below so it displays the sum of x, y, and z
def sum_numbers(x,y)
  puts x+y+z
end


def sum_numbers(x,y,z) #the new method "sum_numbers" will be applied to the numbers like this...
  x + y + z
end

number1 = 10
number2 = 20
number3 = 30
puts sum_numbers(number1, number2, number3)


# ---------------
# 3
#Add to the code below so it displays "Don't forget to (to do item)." for each item.
to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

to_do.each do |x|
  puts "Don't for get to #{x}."
  end


# ---------------
#4 
#Without running the code, what do you think is the return value of the following?
def avg(a, b, c, d)
  total =a + b + c + d
  avg = total / 4
  c + d
end
puts avg(5, 8, 6, 10)

16

# ---------------
#5
#Without running the code, what is the return value of the following?
names = ['David', 'Trevor', 'Sarah', 'Mason']
puts names[2]

Sarah

# ---------------
# 6
# How do you add "bobcat" to this list of wild cat species?
wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']

wild_cats << "bobcat"
puts wild_cats

# ---------------
# 7 
# How do you retrieve the birthplace of user1?
user1= {:firstname=> "Johnny", :lastname => "Begood", 
   :gender => "male", :dob => "08/21/1981", 
   :birthplace => "Seattle, WA"}

puts user1[:birthplace]


# ---------------
# 8
# How do you add "Atlanta, GA " as the current city for user1 in the hash from the last question? 
user1[:current_city] = "Atlanta, GA"
puts user1

# ---------------
# 9
# How would you retrieve "y" in the following array?
alpha_soup= ["c", "k", "y", "u"]

puts alpha_soup[2]


# ---------------
# 10
# How would you retrieve "14" in the following hash?
alphabits= {"d" =>4, "k" => 14, "u" => 52}

puts alphabits["k"]

# ---------------
# 11
# Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.

base = 0
roll = base + 1 + rand(10)


while roll != 7
  puts roll
  roll = base + 1 + rand(10)
end
until roll == 7
end

if roll == 7
  puts "7 - STOP"
end

# Sabrina's solution
n = 1
random_numbers = []
while n != 7
 n = rand(1..10)
 random_numbers.push(n)
end
puts "#{random_numbers}"


# ---------------
# 12
# Continuing from question 11 above, push each randomly generated number to an array.  Then use an each loop and a conditional statement inside to display the total amount of numbers that are under 6.  Then display a statement that reads: "There are (total) numbers under 6.”
base = 0
roll = base + 1 + rand(10)
attempts = [] # Continuing from question 11 above, push each randomly generated number to an array.  
lessthan6 = []

while roll != 7
  puts roll
  attempts.push(roll)
    if roll <= 6
      lessthan6.push(roll)
    end
  roll = base + 1 + rand(10)
end
until roll == 7
end

if roll == 7
  puts "7 - STOP"
end

puts "There were #{attempts.length} attempts before hitting 7 and #{lessthan6.length} of them were 6 and below."
puts "Those attempts were: #{attempts}"



