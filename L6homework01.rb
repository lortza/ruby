# Write code to create a new instance of a Vehicle object 
# and make it honk.

class Vehicle
  def initialize(color, type)
    @color = color
    @type = type   # car, truck, motorcyle, scooter, van
  end
  def beep
    puts "Beep!" * 2 
  end
  def honk
    puts "Honk!"
  end
end


v = Vehicle.new("blue", "sedan")
v.honk 
v.beep

