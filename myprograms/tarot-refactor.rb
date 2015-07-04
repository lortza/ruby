# cards
fool = {:number => "0", :name => "Fool", :meaning => "Beginning, innocence, journey, spontaneity, free spirit", :theme => "Beginning"} 

magician = {:number => "I", :name => "Magician", :meaning => "Intention, focus, will power, skill, purpose, creativity, resourcefulness", :theme =>"Intention"}

hp = {:number => "II", :name => "High Priestess", :meaning => "Intuition, higher powers, wisdom, secrets, subconscious mind", :theme => "Intuition"}

empress = {:number => "III", :name => "Empress", :meaning => "Fertility, mother, lover, nature, protection, abundance", :theme => "Fertility"}

emperor = {:number => "IV", :name => "Emperor", :meaning => "Authority, father-figure, leadership, structure, logic, power", :theme => "Authority"}

hierophant = {:number => "V", :name => "Hierophant", :meaning => "Organizations, religion, group, identifucation, social rules, tradition, school", :theme => "Social Rules"}

lovers = {:number => "VI", :name => "Lovers", :meaning => "Relationships, love, communication, union, harmony, choices", :theme => "Relationships"}

chariot = {:number => "VII", :name => "Chariot", :meaning => "Direction, control, will power, victory, ambition, travel", :theme => "Travel"}

strength = {:number => "VIII", :name => "Strength", :meaning => "Fortitude, inner strength, love, patience, compassion", :theme => "Strength"}

hermit = {:number => "IX", :name => "Hermit", :meaning => "Solitude, soul-searching, introspection, being alone, inner guidance", :theme => "Solitude"}

wheel = {:number => "X", :name => "Wheel of Fortune", :meaning => "Fate, good luck, karma, life cycles, destiny, changes, big picture", :theme => "Fate"}

justice = {:number => "XI", :name => "Justice", :meaning => "Justice, fairness, truth, law, logic, balance", :theme => "Fairness"}

hangedman = {:number => "XII", :name => "Hanged Man", :meaning => "Sacrifice, restriction, letting go, evaluation, new perspective", :theme => "Sacrifice"}

death = {:number => "XIII", :name => "Death", :meaning => "Transformation, ending, beginning, transition", :theme => "Transformation"}

temperance = {:number => "XIV", :name => "Temperance", :meaning =>"Balance, moderation, mix, patience, adjusting", :theme => "Balance"}

devil = {:number => "XV", :name => "Devil", :meaning => "Bondage, fear, self-restriction, addiction, lust, dark side of self", :theme => "Bondage"}

tower = {:number => "XVI", :name => "Tower", :meaning => "Destruction, false securities, upheaval, sudden change, wake-up call", :theme => "Destruction"}

star = {:number => "XVII", :name => "Star", :meaning => "Hope, guidance, relief, inspiration, harmony", :theme => "Hope"}

moon = {:number => "XVIII", :name => "Moon", :meaning =>"Illusion, intuition, unknown, fear, subconscious", :theme => "Illusion"}

sun = {:number => "XIX", :name => "Sun", :meaning => "Illumination, clarity, fun, warmth, success, vitality, clarity", :theme => "Illumination"}

judgment = {:number => "XIX", :name => "Judgment", :meaning => "Awakening, rebirth, inner calling, new perspective", :theme => "Awakening"}

world = {:number => "XXI", :name => "World", :meaning => "Enlightenment, completion, travel, perfect unity, accomplishment", :theme => "Enlightenment"}

cards = [fool, magician, hp, empress, emperor, hierophant, lovers, chariot, strength, hermit, wheel, justice, hangedman, death, temperance, devil, tower, star, moon, sun, judgment, world]

picks = []
  
cards.sample(3).each do |x|
  picks << x
  end

lineWidth = 80
line = "-------"

puts "You".center(lineWidth/3) + "Them".center(lineWidth/3) + "Your Relationship".center(lineWidth/3)
puts line.center(lineWidth/3) + line.center(lineWidth/3) + line.center(lineWidth/3)
puts picks[0][:number].center(lineWidth/3) + picks[1][:number].center(lineWidth/3) + picks[2][:number].center(lineWidth/3)

puts picks[0][:name].center(lineWidth/3) + picks[1][:name].center(lineWidth/3) + picks[2][:name].center(lineWidth/3)

puts picks[0][:theme].center(lineWidth/3) + picks[1][:theme].center(lineWidth/3) + picks[2][:theme].center(lineWidth/3)


# begin game

# def play_game
# puts "Hello and welcome to my table." 
#   puts "My name is Madame Sbaitso and I am going to do a tarot card reading for you about your relationship."
#   puts 

#   puts "What is your first name?"
#   username = gets.chomp.capitalize
#   sleep(1)
#   puts
#   puts "Thank you, #{username}. Now the other person in this relationship, what is his or her name?"
#   othername = gets.chomp.capitalize
#   puts
#   puts "Thank you for that. Let's get started shall we?"
#   sleep(2)
#   puts
#   puts
#   puts "The first card represents you, #{username}. It represents you and what you want out of this relationship with #{othername}."
#   sleep(5)
#   puts
#   puts "I've drawn the #{@picks[0][:name]} card."
#   sleep(2)
#   puts "The #{@picks[0][:name]} card stands for #{@picks[0][:meaning].downcase}."
  


#   puts "Would you like to do another reading? ( y | n )"
#   response = gets.chomp.downcase
#   if response.include? "y"
#     play_game
#   else 
#     puts "kbai."
#   end #while

# end #play_game

# play_game