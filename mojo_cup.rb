# this is an inhereted class, created from cup.rb

class MojoCup < Cup
  def initialize 
    super #<-- runs both the parent Cup initialize AND my new override
    puts "Welcome to Mojo Coffee!"
  end

  def auto_refill
    #homework make auto refill at 0
  end

end