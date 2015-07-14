#secret santa - assign everyone to be a giver and a getter with no dupes

givers = ["Zorro", "DaPC", "Noche", "Nicadonskitty", "Yolanda", "DaBlanc"]
givers.shuffle!
puts "Here are the givers: #{givers}"
getters = givers.rotate(1)
puts "Here are the getters: #{getters}"
pairs = givers.zip(getters)
puts = "Here are the assignments:"
pairs.each do |give, get|
  puts "#{give} gives to #{get}"
end

# merging 2 arrays together http://stackoverflow.com/questions/12011294/combining-two-arrays-to-create-a-two-dimensional-array-in-ruby

#first attempt -- DOES NOT WORK
# givers = ["Zorro", "DaPC", "Noche", "Nicadonskitty", "Yolanda", "DaBlanc"]
# puts "Here are the givers: #{givers}"
# puts "----"
# puts "Here are the assignments:"

# givers.shuffle!

# pairs = [] 

# givers.length.times do
#   pairs << [givers[-1], givers[-2]]
#   givers.pop
# end

# pairs.each do |g, r|
#   puts "#{g} gives to #{r}"
# end