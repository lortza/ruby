#classes

#object-oriented programming is creating things, then
#letting them interact. the "class" is the blueprint
#of how an object should behave.

#an object is an instance of a class 

class Cup #<-- classes are named in TitleCase
  def initialize # every class will need to be initialized
    puts "i'm alive!!!!" #<-- will appear after typing "my_cup = Cup.new"
    @drink_amount = 0 # <-- the @ is the symbol of an instance variable
  end

  def fill
    puts "i'm filled up"
    @drink_amount = 100
  end

  def empty
    puts "all gone! better fill up!"
    @drink_amount = 0
  end

  def sip (x = 5) #<-- needs input, but has a default value of 5
    puts "just drank some!"
      if x > @drink_amount
        @drink_amount = 0
      else
      @drink_amount = @drink_amount - x
      #@drink_amount -= x #shorthand for the same row above
      end # ends if
  end #ends method


  private # <-- private variables are not guaranteed to work or stick around
    def change_foam x
      @foam = x
    end

puts "yay!" #<!-- will appear after typing "require_relative 'cup' "
end #ends Cup class


#unlike the CSS i'v known, we save all of our classes in their own files.
#this Cup class will live in its own cup.rb file

# the objects shouldn't have puts statements. just like a car's engine
# (the object) doesn't talk to you, but the dashboard (the whole program 
# that the programmer writes) does. 


# to see this cup.rb file's function in irb, type, be sure you're first in the project's
# folder in terminal, then enter irb and type
require_relative "cup"

#then make a new cup with
my_cup = Cup.new

#then do things to the cup by
my_cup.fill

#since we've defined a default amount but still allows input, these are the results...
my_cup.sip # will remove 5 from the total
my_cup.sip 12 # will remove 12 from the cup

# after saving the file, always exit ruby and re enter before trying new funcitons



