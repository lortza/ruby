# Inventory App
# Create a program that:
 
# Lists several items
# Allows a user to select an item and view the inventory count, change the number of the inventory, delete the item altogether, or even change the name.Create a new item and give the item an inventory count, and have this item now show up in the list of items you can select. Loops through until the user does not want to edit the list anymore. 



car1 = {:model => "optella", :color => "blue", :type => "sedan", :inventory => 5}
car2 = {:model => "schwing", :color => "red", :type => "convertable", :inventory => 2}
car3 = {:model => "glitz", :color => "white", :type => "sedan", :inventory => 9}
car4 = {:model => "dominator", :color => "black", :type => "SUV", :inventory => 4}
car5 = {:module => "schmancy", :type => "convertable", :color => "pink", :inventory => 1}

lot = [car1, car2, car3, car4]


puts "Our Inventory:"
puts 
lot.each do |x|
  puts "#{x[:model].capitalize} (qty #{x[:inventory]})"
  end

puts
print "Which model would you like? "
selected_model = gets.chomp
puts selected_model

puts
print "How many #{selected_model}s would you like? "
selected_qty = gets.chomp.to_i
puts selected_qty

print "Which model would you like to see? "
selected_model = gets.chomp

puts ""


