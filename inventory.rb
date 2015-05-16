# Write a program that does the following:
# 1. Lists several items.
# 2. Allows a user to select an item and view the inventory count, change the number
#    of the inventory, delete the item altogether, or even change the name.
# 3. Create a new item and give the item an inventory count,. Have this item now show
#    up in the list of items you can select.
# 4. Loops through until the user does not want to edit the list anymore.


class Inventory #<-- classes are named in TitleCase

  def initialize #every class will be initialized
    puts "You've initialized the Inventory class. Wooo!"
    initial_items
  end

  #set up original inventory with item names and quantities
  def initial_items
    puts "How many different types of items do you need in this inventory? (number)"
    item_count = gets.chomp.to_i
    @inventory = Hash.new #<-- builds a new hash for each item number using the loop below

    for n in 1..item_count
      if n.to_s.end_with? "11"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      elsif n.to_s.end_with? "12"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      elsif n.to_s.end_with? "13"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i    
      elsif n.to_s.end_with? "1"
         puts "What is the name of the #{n}st item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      elsif n.to_s.end_with? "2"
         puts "What is the name of the #{n}nd item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      elsif n.to_s.end_with? "3"
        puts "What is the name of the #{n}rd item?"
        @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      else
        puts "What is the name of the #{n}th item?"
        @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @quantity = gets.chomp.to_i
      end #if
       @inventory[@item] = @quantity #<-- what is this doing?
    end #for
    full_inventory
  end
      

  #set up actions that we can do to those items in inventory
  def do_action
    puts ""
    puts "What would you like to do next? (enter a number only)"
    puts " (1) Retrieve an item's quantity"
    puts " (2) Change an item's quantity"
    puts " (3) Delete an item"
    puts " (4) Change an item's name"
    puts " (5) See full inventory"
    puts " (6) Exit program"
    user_action = gets.chomp.to_s
    puts ""

    get_quantity if user_action == "1"
    change_quantity if user_action == "2"
    delete_item if user_action == "3"
    change_name if user_action =="4"
    full_inventory if user_action == "5"
    exit_program if user_action == "6"
  end


  def get_quantity
    puts "Quantity for which item?"
    puts "The available items are:\n #{@inventory}"
    @item = gets.chomp.to_s
    puts "#{@item} has #{@inventory[@item]} in inventory."
    do_action #<-- bring the user back to the main menu

  end

  def change_quantity
    puts "You'd like the change the quantity for which item?"
    @item = gets.chomp.to_s
    puts "What's the new quantity for #{@item}?"
    @quantity = gets.chomp.to_i
    @inventory[@item] = @quantity 
    full_inventory
  end

  def delete_item
    puts "Which item would you like to delete?"
    @item = gets.chomp.to_s
    @inventory[@item] = @quantity
    full_inventory
  end

  def change_name
    puts "Which item do you want to rename?"
    @item = gets.chomp.to_s
    puts "New name:"
    new_name = gets.chomp.to_s
    @inventory[new_name] = @inventory[@item] #<-- i'm a little confused about the direction of the information flow. i need to study this.
    @inventory.delete(@item) #<-- it seems like this is deleting the wrong thing
    full_inventory
  end

  def full_inventory
    puts "Your inventory is:\n #{@inventory}"
    sleep(3)
    do_action
  end

  def exit_program
    puts "Inventory Complete. Goodbye."
  end

puts "yay!"
end #ends Item class

#making it work
i = Inventory.new #<-- STOPPED HERE**************


