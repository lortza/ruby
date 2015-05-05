class Cup #<-- classes are named in TitleCase
  def initialize #every class will be initialized
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


puts "yay!"
end #ends Cup class






