def shuffle
fool = {:number => "0", :name => "Fool", :meaning => "Beginning, innocence, journey, spontaneity, free spirit", :theme => "Beginning"} 
magician = {:number => "I", :name => "Magician", :meaning => "Intention, focus, will power, skill, purpose, creativity, resourcefulness", :theme =>"Intention"}
hp = {:number => "II", :name => "High Priestess", :meaning => "Intuition, higher powers, wisdom, secrets, subconscious mind", :theme => "Intuition"}
empress = {:number => "III", :name => "Empress", :meaning => "Fertility, mother, lover, nature, protection, abundance", :theme => "Fertility"}
emperor = {:number => "IV", :name => "Emperor", :meaning => "Authority, father-figure, leadership, structure, logic, power", :theme => "Authority"}
hierophant = {:number => "V", :name => "Hierophant", :meaning => "Organizations, religion, group, identifucation, social rules, tradition, school", :theme => "Social Rules"}
lovers = {:number => "VI", :name => "Lovers", :meaning => "Relationships, love, communication, union, harmony, choices", :theme => "Relationships"}
chariot = {:number => "VII", :name => "Chariot", :meaning => "Direction, control, will power, victory, ambition, travel", :theme => "Travel"}
strength = {:number => "VIII", :name => "Strength", :meaning => "Fortitude, inner strength, love, patience, compassion", :theme => "Fortitude & Patience"}
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

@cards = [fool, magician, hp, empress, emperor, hierophant, lovers, chariot, strength, hermit, wheel, justice, hangedman, death, temperance, devil, tower, star, moon, sun, judgment, world]

@picks = []
  
@cards.sample(3).each do |x|
  @picks << x
  end

end #shuffle

def firstcard
  puts
  lineWidth = 80
  line = "-------"
  puts "#{@username}".center(lineWidth/3)
  puts line.center(lineWidth/3) 
  puts @picks[0][:number].center(lineWidth/3)
  puts @picks[0][:name].center(lineWidth/3) 
  puts @picks[0][:theme].center(lineWidth/3) 
  puts
  puts
  puts "I've drawn the #{@picks[0][:name]} card. The #{@picks[0][:name]} card stands for #{@picks[0][:meaning].downcase}."
  puts
  puts "Take a few moments to think about how this applies to you and what you want out of this relationship with #{@othername}."
end #firstcard

def secondcard
  puts
  lineWidth = 80
  line = "-------"
  puts "#{@username}".center(lineWidth/3) + "#{@othername}".center(lineWidth/3)
  puts line.center(lineWidth/3) + line.center(lineWidth/3)
  puts @picks[0][:number].center(lineWidth/3) + @picks[1][:number].center(lineWidth/3)
  puts @picks[0][:name].center(lineWidth/3) + @picks[1][:name].center(lineWidth/3)
  puts @picks[0][:theme].center(lineWidth/3) + @picks[1][:theme].center(lineWidth/3)
  puts
  puts
  puts "I've drawn the #{@picks[1][:name]} card. The #{@picks[1][:name]} card stands for #{@picks[1][:meaning].downcase}."
  puts
  puts "Take a few moments to think about how this applies to #{@othername} and what #{@othername} wants in this relationship with you."
end #secondcard

def thirdcard
  puts
  lineWidth = 80
  line = "-------"
  puts "#{@username}".center(lineWidth/3) + "#{@othername}".center(lineWidth/3) + "#{@username} & #{@othername}".center(lineWidth/3)
  puts line.center(lineWidth/3) + line.center(lineWidth/3) + line.center(lineWidth/3)
  puts @picks[0][:number].center(lineWidth/3) + @picks[1][:number].center(lineWidth/3) + @picks[2][:number].center(lineWidth/3)
  puts @picks[0][:name].center(lineWidth/3) + @picks[1][:name].center(lineWidth/3) + @picks[2][:name].center(lineWidth/3)
  puts @picks[0][:theme].center(lineWidth/3) + @picks[1][:theme].center(lineWidth/3) + @picks[2][:theme].center(lineWidth/3)
  puts
  puts
  puts "I've drawn the #{@picks[2][:name]} card. The #{@picks[2][:name]} card stands for #{@picks[2][:meaning].downcase}."
  puts
  puts "Take a few moments to think about what this means for the current state of your relationship with #{@othername} and what actions you may want to take to continue on this path or to change it."
end #thirdcard

def play_game
  shuffle

  title = "Mystic 3-Card Tarot Reading by Madame Sbaitso"
  maxlength = title.length.to_i + 6
  puts "\n"
  puts "~" * maxlength
  puts title.upcase.center(maxlength)
  puts "~" * maxlength
  puts "\n"

  mme
  puts "Hello and welcome to my tarot reading table." 
  puts
  puts "My name is Madame Sbaitso and I will do a Relationship reading for you."
  puts 

  puts "What is your first name?"
  @username = gets.chomp.capitalize
  sleep(1)
  puts "Thank you, #{@username}. Now the other person in this relationship, what is their name?"
  @othername = gets.chomp.capitalize
  puts "Thank you for that. Let's get started shall we?"
  sleep(2)
  puts
  puts "The first card I'll draw represents you and what you want out of this relationship with #{@othername}."
  puts "Press enter when you're ready to see the first card."
  response = gets.chomp
  firstcard

  puts "Press enter when you're ready to continue."
  response = gets.chomp
  puts
  puts "The second card represents #{@othername} and what #{@othername} wants in this relationship with you."
  puts
  puts "Press enter when you're ready to see this card."
  response = gets.chomp
  secondcard

  puts "Press enter when you're ready to continue."
  response = gets.chomp
  puts
  puts "The last card is the current state of the relationship itself and where your relationship with #{@othername} is heading. Of course, you and #{@othername} can change this outcome."
  puts
  puts "Press enter when you're ready to see this card."
  response = gets.chomp
  thirdcard
  puts

  puts "Press enter when you're ready to continue."
  response = gets.chomp
  puts
  puts "This concludes our reading."
  puts
  puts "Care for another reading? ( y | n )"
  response = gets.chomp.downcase
  if response.include? "y"
    play_game
  else
    unicorn
    puts "See you next time. Until then, I wish you good fortune... and this unicorn."
  end #if

end #play_game

def mme
  my_str = <<-art

           /'~~~~~~~~\  
        ,/'/__\____,. `\ 
       | _)'  \_____,\\_\ 
      ,|/, ,,,   ,,, \_L_\ 
      ( ( .<o>   <o>.  ,'( 
       ))              ) ) 
      ( (     `-'     ( (' 
       ))\    ___,    ) ))   
      ( ( \   `--'  /( ( ( 
       ) ))|\______/| )) ) 
      ( (( |        |( ((  
       (,(,\________/,,),)  
  art
    puts my_str
end #mme

def unicorn
  my_str = <<-art
                             ,|     
                            //|                              ,|
                         //,/                             -~ |
                        // / |                         _-~   /  ,
                      /'/ / /                       _-~   _/_-~ |
                     ( ( / /'                   _ -~     _-~ ,/'
                      \~\/'/|             __--~~__--\ _-~  _/,
             ,,)))))));, \/~-_     __--~~  --~~  __/~  _-~ /
           __))))))))))))));,>/\   /        __--~~  \-~~ _-~
         -\(((((''''(((((((( >~\/     --~~   __--~' _-~ ~|
--==//////((''  .     `)))))), /     ___---~~  ~~\~~__--~ 
        ))| @    ;-.     (((((/           __--~~~'~~/
          `|    /  )      )))/      ~~~~~__\__---~~__--~~--_
            |   |   |       (/      ---~~~/__-----~~  ,;::'  \      ,
            o_);   ;        /      ----~~/           \,-~~~\  |    /|
                 ;        (      ---~~/         `:::|      |;|   < >
                |   _      `----~~~~'      /      `:|       \;\__// 
          ______/\/~    |                 /        /         ~---~
        /~;;.____/;;'  /          ___----(   `;;;/               
       / //  _;______;'------~~~~~    |;;/\    /          
       //  | |                        /  |  \;;,\              
     (<_  | ;                      /',/-----'  _>
       \_| ||_                     //~;~~~~~~~~~ 
          `\_|                   (,~~ 
                                  \~\ 
                                   ~~ 
    art
    puts my_str
  end #ends unicorn

play_game
  