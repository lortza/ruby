title = "Tarot Mystic 3-Card Reading by Madame Sbaitso"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"


#------CODES-THAT-WILL-BLOW-YOUR-MIND---------


playagain = "y"

def reading(x)
  fool = {:number => "0", :name => "Fool", :meaning => "Beginning, innocence, journey, spontaneity, free spirit"} 

  magician = {:number => "I", :name => "Magician", :meaning => "Intention, focus, will power, skill, purpose, creativity, resourcefulness"}

  hp = {:number => "II", :name => "High Priestess", :meaning => "Intuition, higher powers, wisdom, secrets, subconscious mind"}

  empress = {:number => "III", :name => "Empress", :meaning => "Fertility, mother, lover, nature, protection, abundance"}

  emperor = {:number => "IV", :name => "Emperor", :meaning => "Authority, father-figure, leadership, structure, logic, power"}

  hierophant = {:number => "V", :name => "Hierophant", :meaning => "Organizations, religion, group, identifucation, social rules, tradition, school"}

  lovers = {:number => "VI", :name => "Lovers", :meaning => "Relationships, love, communication, union, harmony, choices"}

  chariot = {:number => "VII", :name => "Chariot", :meaning => "Direction, control, will power, victory, ambition, travel"}

  strength = {:number => "VIII", :name => "Strength", :meaning => "Fortitude, inner strength, love, patience, compassion"}

  hermit = {:number => "IX", :name => "Hermit", :meaning => "Solitude, soul-searching, introspection, being alone, inner guidance"}

  wheel = {:number => "X", :name => "Wheel of Fortune", :meaning => "Fate, good luck, karma, life cycles, destiny, changes, big picture"}

  justice = {:number => "XI", :name => "Justice", :meaning => "Justice, fairness, truth, law, logic, balance"}

  hangedman = {:number => "XII", :name => "Hanged Man", :meaning => "Sacrifice, restriction, letting go, evaluation, new perspective"}

  death = {:number => "XIII", :name => "Death", :meaning => "Transformation, ending, beginning, transition"}

  temperance = {:number => "XIV", :name => "Temperance", :meaning =>"Balance, moderation, mix, patience, adjusting"}

  devil = {:number => "XV", :name => "Devil", :meaning => "Bondage, fear, self-restriction, addiction, lust, dark side of self"}

  tower = {:number => "XVI", :name => "Tower", :meaning => "Destruction, false securities, upheaval, sudden change, wake-up call"}

  star = {:number => "XVII", :name => "Star", :meaning => "Hope, guidance, relief, inspiration, harmony"}

  moon = {:number => "XVIII", :name => "Moon", :meaning =>"Illusion, intuition, unknown, fear, subconscious"}

  sun = {:number => "XIX", :name => "Sun", :meaning => "Illumination, clarity, fun, warmth, success, vitality, clarity"}

  judgment = {:number => "XIX", :name => "Judgment", :meaning => "Awakening, rebirth, inner calling, new perspective"}

  world = {:number => "XXI", :name => "World", :meaning => "Enlightenment, completion, travel, perfect unity, accomplishment"}


  picksnames = []
  picksmeanings = []

  cards = [fool, magician, hp, empress, emperor, hierophant, lovers, chariot, strength, hermit, wheel, justice, hangedman, death, temperance, devil, tower, star, moon, sun, judgment, world]

  cards.sample(3).each do |x|
    picksnames << x[:name]
    picksmeanings << x[:meaning]
  end

  puts "Hello and welcome to my table." 
  puts "My name is Madame Sbaitso and I am going to do a tarot card reading for you about your relationship."
  puts 
  puts "What is your first name?"
  username = gets.chomp.capitalize
  sleep(1)
  puts
  puts "Thank you, #{username}. Now the other person in this relationship, what is his or her name?"
  othername = gets.chomp.capitalize
  puts
  puts "Thank you for that. Let's get started shall we?"
  sleep(2)
  puts
  puts
  puts
  puts
  puts
  puts "The first card represents you, #{username}. It represents you and what you want out of this relationship with #{othername}."
  sleep(5)
  puts
  puts "I've drawn the #{picksnames[0]} card."
  sleep(2)
  puts "The #{picksnames[0]} card stands for #{picksmeanings[0].downcase}."
  puts "I'll give you a few moments to think about how this applies to you and what you want out of this relationship with #{othername}."
  sleep(15)
  puts
  puts
  puts
  puts
  puts "This next card represents #{othername} and what #{othername} wants in this relationship with you."
  sleep(5)
  puts
  puts "I've drawn the #{picksnames[1]} card."
  sleep(2)
  puts "The #{picksnames[1]} card stands for #{picksmeanings[1].downcase}."
  puts "I'll give you a few moments to think about how this applies to #{othername} and what #{othername} wants in this relationship with you."
  sleep(15)
  puts
  puts
  puts
  puts
  puts "The last card is the current state of the relationship itself and where the relationship is heading. Of course, you and #{othername} can change this outcome."
  sleep(5)
  puts
  puts "I've drawn the #{picksnames[2]} card."
  sleep(2)
  puts "The #{picksnames[2]} card stands for #{picksmeanings[2].downcase}."
  puts "I'll give you a few moments to think about what this means for the current state of your relationship and what actions you may want to take to continue on this path or to change it."
    sleep(15)
  puts
  puts
  puts
  puts
  puts "This concludes our reading."
  puts
end

base = 0

while  playagain == "y" do 
  reading(base)
  puts "Would you care to do another reading? y | n "
        playagain = gets.chomp.downcase
        puts "\n" *2
  end
  until playagain == "n"
  end

if playagain == "n"
  puts "Madame Sbaitso wishes you an enchanted life. Goodbye."
  puts
end





