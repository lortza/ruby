# 13
# (Optional - will be taught in next lesson)  
# Write code to create a new instance of a Vehicle object and make it honk.

Class Vehicle
  def initialize(color, type)
    @color = color
    @type = type   # car, truck, motorcyle, scooter, van
  end
  def honk
    puts "Beep!"
  end
end