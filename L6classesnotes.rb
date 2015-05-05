#classes

#object-oriented programming is creating things, then
#letting them interact. the "class" is the blueprint
#of how an object should behave.

#an object is an instance of a class 

class Cup #<-- classes are named in TitleCase
  def initialize #every class will be initialized
    puts "i'm alive!!!!"
    @drink_amount = 0 # <-- the @ is the symbol of a instance variable
  end

  def fill
    puts "i'm filled up" #all of these puts statements are just helping us in programming, but you won't want them in final output because the programmer will be doing this in another setting.
    @drink_amount = 100
  end

  def empty
    puts "all gone!"
    @drink_amount = 0
  end

  def sip
    puts "just drank some!"
    @drink_amount = @drink_amount - 5
    #@drink_amount -= 5 #shorthand for the same row above
    puts "oh snap you'd better fill up!"
  end

end

#unlike the CSS i'v known, we save all of our classes in their own files.
#this Cup class will live in its own cup.rb file

# the objects shouldn't have puts statements. just like a car's engine
# (the object) doesn't talk to you, but the dashboard (the whole program 
# that the programmer writes) does. 


# to see this cup.rb file's function in irb, type
require_relative "cup"

#then make a new cup with
my_cup = Cup.new

#then do things to the cup by
my_cup.fill

# after saving the file, always exit ruby and re enter before trying new funcitons



