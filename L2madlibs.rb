my_str = <<-art
============GET=READY=FOR=SOME===============
X   X    X    XXXX     X     XXX  XXX   XXXX
XX XX   X X   X   X    X      X   X  X  X
X X X  X   X  X   X    X      X   XXX   XXXX
X   X  XXXXX  X   X    X      X   X  X     X
X   X  X   X  XXXX     XXXX  XXX  XXXX  XXXX
=============================================
art
puts my_str


puts "Please tell me your name: "
name = gets.chomp.capitalize!
puts "Hi #{name}, it's time to play some Mad Libs! Just give me some words and I'll tell you a funny story."
puts " "

#title = name.to_s.upcase! + "ELLA"
title = "#{name.to_s.upcase!}ELLA"

puts "Please give me an adjective: "
adjective1 = gets.chomp.upcase!

puts "Please give me a noun: "
man = gets.chomp.upcase!

puts "Please give me a noun: "
child = gets.chomp.upcase!

puts "Please give me an adjective: "
good = gets.chomp.upcase!

puts "Please give me an adjective: "
pious = gets.chomp.upcase!

puts "Please give me a verb: "
protect = gets.chomp.upcase!

puts "Please give me a verb: "
look_down_on = gets.chomp.upcase!

puts "Please give me the name of a place: "
heaven = gets.chomp.upcase!

puts "Please give me a verb: "
benear = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed':"
closed = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed'."
died = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed'."
married = gets.chomp.upcase!

puts "Please give me an adverb (a word that ends in -ly):"
unfortnately = gets.chomp.upcase!

puts "Please give me a number:"
numbersisters = gets.chomp.to_s

puts "Please give me an adjective:"
horrible = gets.chomp.upcase!

puts "Please give a plural noun: "
daughters = gets.chomp.upcase!

puts "Please give me a verb: "
wash = gets.chomp.upcase!

puts "Please give me the name of a personal electronic device: "
ipad = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed':"
bullied = gets.chomp.upcase!

puts "Please give me the name of a social network: "
facebook = gets.chomp.upcase!

puts "Please give me the name of a terrible tv show: "
madmen = gets.chomp.upcase!

puts "Please give me a number:"
seven = gets.chomp.to_s

puts "Please give me a singular unit of time (ex: second):"
days = gets.chomp.upcase!

puts "Please give me a verb in present tense, preferably a violent one:"
violentverb = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed':"
begged = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed':"
pasttenseverb = gets.chomp.upcase!

puts "Please give me a past tense verb that ends in 'ed':"
messedwith = gets.chomp.upcase!

puts "Are you ready to read the story?"
puts "Type 'yes' to continue."
response = gets.chomp.upcase!
if 
  response == "YES"
    puts "+++++++++++++++++++++++++++++++++++++++++"
    puts " "
    puts "And now for the story of #{title}"
    puts " "
    puts "The wife of a rich #{man} fell #{adjective1}, and as she felt that her end was drawing near, she called her only daughter to her bedside and said,"
    puts " "
    puts "'My dear #{child}, be #{good} and #{pious}, and then our #{good} God will always #{protect} you, and I will #{look_down_on} you from #{heaven} and #{benear} you.' Thereupon she #{closed} her eyes, #{died}, and died."
    puts " "  
    puts "#{title} was very sad, but she honored her mother by remaining #{pious} and #{good}. #{unfortnately} for #{title}, her father the #{man} was not #{good} or #{pious}, so he quickly #{married} a new wife who had #{numbersisters} #{horrible} #{daughters}."
    puts " "
    puts "The #{numbersisters} #{horrible} #{daughters} were very mean to #{title}. They stole her #{ipad}, made her #{wash} their clothes, #{bullied} her publically on #{facebook}, and made her watch every episode of #{madmen} back to back."
    puts " "
    puts "#{title} put up with it for about #{seven} #{days}S, then decided to #{violentverb} all #{numbersisters} #{daughters} until they #{begged} for mercy, #{pasttenseverb}, or gave her back her #{ipad}. Only one of them #{begged} for mercy, but the others #{pasttenseverb}. #{title} was pleased with this outcome. She got her #{ipad} back and lived happily ever after because none of those #{horrible} #{daughters} ever #{messedwith} her again."
    puts " "
    puts "The End"
end

puts "+++++++++++++++++++++++++++++++++++++++++"
puts " "
puts "OMG that was awesome. Well, I thought so anyway. Do you agree?"
response = gets.chomp.upcase!

if
  response == "YES"
  puts "It's only because YOU'RE hilarious! Okay bye! See you next time."
  
elsif 
  response == "NO"
  puts "Okay, so I guess we don't share the same sense of humor. That's okay. We don't need to be friends. Good bye."

else
  puts "Awww. I see you think so much of me! I'm only programmed to understand 'yes' and 'no,' so I'm kind of embarassed now. [runs away like a muppet]"  
end