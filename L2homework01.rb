# Convert user height and weight to cm adn kg

# Intro text

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " __  __     ______     __         __         ______  "  
puts "/\ \_\ \   /\  ___\   /\ \       /\ \       /\  __ \  "
puts "\ \  __ \  \ \  __\   \ \ \____  \ \ \____  \ \ \/\ \  "
puts " \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_____\ "
puts "  \/_/\/_/   \/_____/   \/_____/   \/_____/   \/_____/ "
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to my height and weight conversion program."
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "What is your name?"
name = gets.chomp.capitalize!

# Ask for user height
puts "Hi, #{name}. How tall are you?"
puts "feet: "
height_ft = gets.to_i
puts "inches: "
height_ftin = gets.to_i
height_in = height_ft * 12 + height_ftin
puts "Awesome. So you're #{height_ft} ft #{height_ftin} in (or #{height_in} in)"

# Convert in to cm
def convert_in_to_cm x
  x * 2.54
end

height_cm = convert_in_to_cm(height_in)

# Display height results
puts "And that converts to #{height_cm} centimeters."

# Ask user for weight
puts "So about your weight... how much do you say you weigh in pounds right now?"
weight_lbs = gets.chomp.to_i

# Convert pounds to kg
def convert_lbs_to_kg x
  x * 0.45359237
end

weight_kg = convert_lbs_to_kg(weight_lbs)

# Display weight results
puts "Super duper. Your #{weight_lbs} lbs converts to #{weight_kg} kgs."

