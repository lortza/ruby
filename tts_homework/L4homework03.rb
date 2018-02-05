puts "\n"
header_size = 80
puts "~" * header_size
puts "And now it's time to math off...".upcase.center(header_size)
puts "~" * header_size

my_str = <<-art

Assignment: XXXX

art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================


#1 DONE
puts "what's your name?"
name = gets.chomp.capitalize
puts "Hello #{name}. Nice to meet you."


#2 DONE
# display the sum of x + y + z 
def sum_numbers(x,y,z) #the new method "sum_numbers" will be applied to the numbers like this...
  x + y + z
end

number1 = 10
number2 = 20
number3 = 30
puts sum_numbers(number1, number2, number3) # here x becomes "number1", y -> "number2", z -> "number3"



#3 DONE
#Add to the code below so it displays "Don't forget to (to do item)." for each item. 

to_do = ["wash the car", "buy groceries", "finish your homework", "pay the bills"]

to_do.each do |x|
    puts "Don't forget to #{x}!"
end
puts "\n" * 2


#4 DONE 
# What is the return value of the following:
def calculate_average (a, b, c, d)
  total = a + b + c + d
  avg = total / 4
  return c + d # <- actually totally unrelated to the rest of the definition
end
puts calculate_average(5, 8, 6, 10) # ANSWER = 16


#5 DONE 
# What is the return value of the following: <=== NOT DONE
names = ['David', 'Trevor', 'Sarah', 'Mason']
puts names[2]
Sarah


#6 DONE 
How do you add "bobcat" to this list of wild cat species?
wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']
wild_cats << "bobcat"


#7 USER
# How do you retrieve the birthplace of user1?
user1= {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",
        :dob => "08/21/1981", :birthplace => "Seattle, WA"}

user1[:birthplace] # <-- like this


#8 DONE
# How do you add "Atlanta, GA " as the current city for user1 in the hash from question 7?
user1[:current_city] = "Atlanta, GA"



#9 DONE
# How would you retrieve "y" in the following array?
alpha_soup= ["c", "k", "y", "u"]

alpha_soup[2] # <-- like this



#10 DONE 
# How would you retrieve "14" in the following hash?
alphabits= {"d" =>4, "k" => 14, "u" => 52}

alphabits["k"] # <-- like this



#11  DONE
# Write a loop that continues to display random numbers 
#between 1 and 10 until the number generated is 7.

# i'm going to do this like rolling 10-sided dice

# create a method to generate the roll action of a random number 1 - 10
def roll_action(x) 
  x + (1 + rand(10))
end 

# apply that action to a base number
base = 0
roll_result = roll_action(base)

# assess if the generated number == 7
while roll_result !=7 do # while the result is not 7, roll again
  puts "#{roll_result}... roll again"
  roll_result = roll_action(base)
  # puts roll_result
  end
  until roll_result == 7 # if == 7 stop
  end

if roll_result == 7
  puts "You rolled #{roll_result}... You win!"
end


#12  DONE
# Continuing from question 11 above, push each randomly generated 
# number to an array.  Then use an each loop and a conditional statement 
# inside to display the total amount of numbers that are under 6.  
# Then display a statement that reads: "There are (total) numbers under 6."

# create a method to generate the roll action of a random number 1 - 10
def roll_action(x) 
  x + (1 + rand(10))
end 

results_array = []

# apply that action to a base number
base = 0
roll_result = roll_action(base)

# assess if the generated number == 7
while roll_result !=7 do # while the result is not 7, roll again
  results_array.push(roll_result) #push each generated number into an array
  puts "#{roll_result}... roll again"
  roll_result = roll_action(base)
  end
  until roll_result == 7 # if == 7 stop
  end

if roll_result == 7
  puts "You rolled #{roll_result}... You win!"
  
end

# Continuing from question 11 above, push each randomly generated 
# number to an array.  
puts results_array
attempts = results_array.length
puts "there were #{attempts} attempts before getting to 7,"


# Then use an each loop and a conditional statement 
# inside to display the total amount of numbers that are under 6.  
# Then display a statement that reads: "There are (total) numbers under 6."

under6_array = []

 results_array.each do |x|
  if x <= 6
    under6_array.push(x)
  end
end
 
 puts "#{under6_array.length} of which were less than or equal to 6."
 

