title = "Welcome to the Sandbox, bitches"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------

# def doubleThis num
#   numTimes2 = num*2
#   puts num.to_s+' doubled is '+numTimes2.to_s
# end

# input = gets.chomp.to_i
# doubleThis input

def say_moo n
  puts "mooooooo...." * n
end

say_moo 3
puts "muah"
say_moo 10