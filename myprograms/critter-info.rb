critter1 = {:name => "miko", :human => "sabina", :city => "Isla Mujeres", :country => "mexico", :job =>"horse chaser"}
critter2 = {:name => "yolanda", :human => "rigo", :city => "leon", :country => "nicaragua", :job =>"fish scrap inspector"}
critter3 = {:name => "dablanc", :human => "batman", :city => "medellin", :country => "colombia", :job =>"crime fighter"}
critter4 = {:name => "niña", :human => "nanette", :city => "todos Santos", :country => "mexico", :job =>"peacocks manager"}

cuddle_puddle = [critter1, critter2, critter3, critter4]

puts "Here are all of the critters that I know:"
cuddle_puddle.each do |x|
  puts x[:name].capitalize
end
puts
puts "And this is what they each do for a job:"
cuddle_puddle.each do |x|
  puts "#{x[:name].capitalize} --> #{x[:job].capitalize}"
end

puts
cuddle_puddle.each do |x|
  puts "#{x[:name].capitalize} lets #{x[:human].capitalize} live with heem in heem's home in #{x[:city].capitalize}, #{x[:country].capitalize}."
end