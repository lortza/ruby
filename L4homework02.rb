puts "\n" * 2
header_size = 80
puts "~" * header_size
puts "L4 Secret Santa App".upcase.center(header_size)
puts "~" * header_size
puts "\n"

my_str = <<-art
Assignment: Write a Secret Santa app that takes a list 
of people and outputs matches for Secret Santa gift-giving.
art
puts my_str

puts "BEGIN..."
space = "\n" * 1
puts space

# =========== START PROGRAM =====================

# create array with all gift givers
givers = ["Anne", "Blake", "Cory", "Gant", "Kevin", "Leigh", "Robert", "Sabrina", "Sia", "Tony"]

# create array with all gift getters
getters = ["Anne", "Blake", "Cory", "Gant", "Kevin", "Leigh", "Robert", "Sabrina", "Sia", "Tony"]

# display lists of both givers and getters
puts "The givers are: " + givers.to_s
puts space
puts "The getters are: " + getters.to_s
puts space


givers.each.sample do |x|
  x = givers.pop
end
puts "\n" * 2



