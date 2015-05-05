title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------

#classes

#object-oriented programming is creating things, then
#letting them interact. the "class" is the blueprint
#of how an object should behave.

#an object is an instance of a class 

class Cup #<-- classes are named in TitleCase
  def initialize # <-- every class will be initialized
    puts "i'm alive!!!!"
    @drink_amount = 0 # <-- the @ is the symbol of a instance variable
  end

  def fill
    puts "i'm filled up"
    @drink_amount = 100
  end

  def empty
    puts "all gone!"
    @drink_amount = 0

  def quantity
    puts @drink_amount
  end

end

#unlike the CSS i'v known, we save all of our classes in their own files.
#this Cup class will live in its own cup.rb file