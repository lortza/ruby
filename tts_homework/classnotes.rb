puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " __  __     ______     __         __         ______  "  
puts "/\ \_\ \   /\  ___\   /\ \       /\ \       /\  __ \  "
puts "\ \  __ \  \ \  __\   \ \ \____  \ \ \____  \ \ \/\ \  "
puts " \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\  \ \_____\ "
puts "  \/_/\/_/   \/_____/   \/_____/   \/_____/   \/_____/ "
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to my height and weight conversion program."
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

========================


========================
========================
========================
========================
========================
========================
my_str = <<-art
============GET=READY=FOR=SOME===============
X   X    X    XXXX     X     XXX  XXX   XXXX
XX XX   X X   X   X    X      X   X  X  X
X X X  X   X  X   X    X      X   XXX   XXXX
X   X  XXXXX  X   X    X      X   X  X     X
X   X  X   X  XXXX     XXXX  XXX  XXXX  XXXX
=============================================
art
puts my_str

========================
# fancy header
header_size = 80
puts "~" * header_size
puts "Welcome to Soosami Street".center(header_size)
puts "~" * header_size
puts "\n" * 2

========================

# Ask for user height
puts "Hi, #{name}. How tall are you?"
puts "feet: "
height_ft = gets.to_i
puts "inches: "
height_ftin = gets.to_i
height_in = height_ft * 12 + height_ftin
puts "Awesome. So you're #{height_ft} ft #{height_ftin} in (or #{height_in} in)"


========================
# making a basic method
def greeting x
 puts "Hello #{x}"
end
greeting(name)
greeting("Anne")
name2 = "Robert"
greeting(name2)

-----------------------

# Convert user height and weight to cm adn kg

# Intro text
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "Welcome to my height and weight conversion program."
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts "What is your name?"
name = gets.chomp.capitalize!

# Ask for user height
puts "Hi, #{name}. How tall are you in inches?"
height_in = gets.chomp.to_i

# Ask for user weight
puts "Awesome. Now, how much do you weigh in pounds?"
weight_lbs = gets.chomp.to_i

# Convert height to cm
def convert_height to_inches 
  to_inches * 2.54
end
height_cm = convert_height(height_in)

# Convert weight to kg
def convert_weight to_kg 
  to_kg * 0.45359237
end
weight_kg = convert_weight(weight_lbs)


# Display height results
puts "your height is #{height_in} in and #{height_cm} cm." 

# Display weight results
puts "your weight is #{weight_lbs} in and #{weight_kg} kg." 
