
def sledding
    puts "hey is there enough snow to go sledding?"
    answer = gets.chomp
      if answer == "yes"
        puts "great! let's go sledding!"
      else
        puts "oh bummer. let's just mope instead."
      end #if answer
end #def

def decider
temp = gets.chomp.to_i
  if temp >= 121 || temp <= -80
      puts "Hmm. You must not be on Earth. Enter the actual temperature, ya jag: "
    decider
  elsif temp >= 50 and temp <= 80
    puts "Hey that's super! Let's go outside!"
  elsif temp <= 32
    sledding
  else temp < 50 || temp > 80
    puts "ugh. staying in."
  end #if
end #decider

puts "what's today's temperature?"
decider