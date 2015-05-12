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
    puts "How many items do you need in this inventory? (number)"
    item_count = gets.chomp.to_i
    @inventory = Hash.new
    for n in 19..item_count
      if n.to_s.end_with? "11"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      elsif n.to_s.end_with? "12"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      elsif n.to_s.end_with? "13"
         puts "What is the name of the #{n}th item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i    
      elsif n.to_s.end_with? "1"
         puts "What is the name of the #{n}st item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      elsif n.to_s.end_with? "2"
         puts "What is the name of the #{n}nd item?"
         @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      elsif n.to_s.end_with? "3"
        puts "What is the name of the #{n}rd item?"
        @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      else
        puts "What is the name of the #{n}th item?"
        @item = gets.chomp.to_s
          puts "How many #{@item}s are in inventory?"
          @count = gets.chomp.to_i
      end #if
       @inventory[@item] = @count #<-- what is this doing?
    end #for

  #set up actions that we can do to those items


  def change_number
  end

  def delete_item
  end

  def change_name
  end

  def create_new
  end


puts "yay!"
end #ends Item class


#making it work
i = Inventory.new
i.initial_items





