
title = "Todos Bienvenidos al Cajón de Arena!"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.center(maxlength)
puts "~" * maxlength
puts "\n"
#------CODES-THAT-WILL-BLOW-YOUR-MIND---------


givers = ["Zorro", "DaPC", "Noche", "Nicadonskitty", "Yolanda", "DaBlanc"]
givers.shuffle!
getters = givers.rotate(1)
pairs = givers.zip(getters)
pairs.each do |give, get|
  puts "#{give} gives to #{get}"
end

