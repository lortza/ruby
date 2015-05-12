title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------
item_count = 24

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
  # @inventory[@item] = @count #<-- what is this doing?
end #for





