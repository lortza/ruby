class Game

  def initialize()
    @username = ''
    @othername = ''
  end

  def play
    display_game_intro
    get_player_names
    shuffle_deck

    puts "The first card I'll draw represents you and what you want out of this relationship with #{@othername}."

    prompt_to_continue

    output_cards(1)
    puts "Take a few moments to think about how this applies to you and what you want out of this relationship with #{@othername}."

    prompt_to_continue

    puts "The second card represents #{@othername} and what #{@othername} wants in this relationship with you."

    prompt_to_continue

    output_cards(2)
    puts "Take a few moments to think about how this applies to #{@othername} and what #{@othername} wants in this relationship with you."

    prompt_to_continue

    puts "The last card is the current state of the relationship itself and where your relationship with #{@othername} is heading. Of course, you and #{@othername} can change this outcome."

    prompt_to_continue

    output_cards(3)
    puts "Take a few moments to think about what this means for the current state of your relationship with #{@othername} and what actions you may want to take to continue on this path or to change it."

    prompt_to_continue

    puts "This concludes our reading."

    play_again?
  end


  private

  def display_game_intro
    title = "Mystic 3-Card Tarot Reading by Madame Sbaitso"
    maxlength = title.length.to_i + 6
    puts
    puts "~" * maxlength
    puts title.upcase.center(maxlength)
    puts "~" * maxlength

    draw_madame
    puts "Hello my name is Madame Sbaitso and I will do a Relationship tarot card reading for you.", ""
  end


  def get_player_names
    puts "What is your first name?"
    @username = gets.chomp.capitalize
    puts "Thank you, #{@username}. Now the other person in this relationship, what is his or her name?"
    @othername = gets.chomp.capitalize
    puts "Thank you for that. Let's get started shall we?"
    puts
  end


  def prompt_to_continue
    puts "","Press enter to continue.",""
    response = gets.chomp
  end


  def shuffle_deck
    deck = [
      {:number => "0", :name => "Fool", :meaning => "Beginning, innocence, journey, spontaneity, free spirit", :theme => "Beginning"},
      {:number => "I", :name => "Magician", :meaning => "Intention, focus, will power, skill, purpose, creativity, resourcefulness", :theme =>"Intention"},
      {:number => "II", :name => "High Priestess", :meaning => "Intuition, higher powers, wisdom, secrets, subconscious mind", :theme => "Intuition"},
      {:number => "III", :name => "Empress", :meaning => "Fertility, mother, lover, nature, protection, abundance", :theme => "Fertility"},
      {:number => "IV", :name => "Emperor", :meaning => "Authority, father-figure, leadership, structure, logic, power", :theme => "Authority"},
      {:number => "V", :name => "Hierophant", :meaning => "Organizations, religion, group, identifucation, social rules, tradition, school", :theme => "Social Rules"},
      {:number => "VI", :name => "Lovers", :meaning => "Relationships, love, communication, union, harmony, choices", :theme => "Relationships"},
      {:number => "VII", :name => "Chariot", :meaning => "Direction, control, will power, victory, ambition, travel", :theme => "Travel"},
      {:number => "VIII", :name => "Strength", :meaning => "Fortitude, inner strength, love, patience, compassion", :theme => "Fortitude & Patience"},
      {:number => "IX", :name => "Hermit", :meaning => "Solitude, soul-searching, introspection, being alone, inner guidance", :theme => "Solitude"},
      {:number => "X", :name => "Wheel of Fortune", :meaning => "Fate, good luck, karma, life cycles, destiny, changes, big picture", :theme => "Fate"},
      {:number => "XI", :name => "Justice", :meaning => "Justice, fairness, truth, law, logic, balance", :theme => "Fairness"},
      {:number => "XII", :name => "Hanged Man", :meaning => "Sacrifice, restriction, letting go, evaluation, new perspective", :theme => "Sacrifice"},
      {:number => "XIII", :name => "Death", :meaning => "Transformation, ending, beginning, transition", :theme => "Transformation"},
      {:number => "XIV", :name => "Temperance", :meaning =>"Balance, moderation, mix, patience, adjusting", :theme => "Balance"},
      {:number => "XV", :name => "Devil", :meaning => "Bondage, fear, self-restriction, addiction, lust, dark side of self", :theme => "Bondage"},
      {:number => "XVI", :name => "Tower", :meaning => "Destruction, false securities, upheaval, sudden change, wake-up call", :theme => "Destruction"},
      {:number => "XVII", :name => "Star", :meaning => "Hope, guidance, relief, inspiration, harmony", :theme => "Hope"},
      {:number => "XVIII", :name => "Moon", :meaning =>"Illusion, intuition, unknown, fear, subconscious", :theme => "Illusion"},
      {:number => "XIX", :name => "Sun", :meaning => "Illumination, clarity, fun, warmth, success, vitality, clarity", :theme => "Illumination"},
      {:number => "XIX", :name => "Judgment", :meaning => "Awakening, rebirth, inner calling, new perspective", :theme => "Awakening"},
      {:number => "XXI", :name => "World", :meaning => "Enlightenment, completion, travel, perfect unity, accomplishment", :theme => "Enlightenment"}
    ]

    @cards = deck.sample(3)
  end


  def introduce_card(card_id)
    "I've drawn the #{@cards[card_id][:name]} card. The #{@cards[card_id][:name]} card stands for #{@cards[card_id][:meaning].downcase}."
  end


  def output_cards(qty)
    lineWidth = 80
    divider_line = "-------"
    line1 = ''
    line2 = ''
    line3 = ''

    cards_for_display = @cards[0..(qty - 1)]

    cards_for_display.each do |card|
      line1 += card[:number].center(lineWidth/3)
      line2 += card[:name].center(lineWidth/3)
      line3 += card[:theme].center(lineWidth/3)
    end

    puts "","#{@username}".center(lineWidth/3) + "#{@othername}".center(lineWidth/3) + "#{@username} & #{@othername}".center(lineWidth/3)
    puts divider_line.center(lineWidth/3) + divider_line.center(lineWidth/3) + divider_line.center(lineWidth/3)
    puts line1
    puts line2
    puts line3, "", "", ""
    puts introduce_card(qty - 1)
    puts
  end


  def play_again?
    puts "", "Care for another reading? ( y | n )"
    response = gets.chomp.downcase


    if response.include? "y"
      play
    else
      puts "See you next time. Until then, I wish you good fortune... and this unicorn."
      draw_unicorn
    end #if
  end


  def draw_madame

    madame = <<-art

             /'~~~~~~~~\\
          ,/'/__\\____,. `\\
         | _)'  \\_____,\\_\\
        ,|/, ,,,   ,,, \\_L_\\
        ( ( .<o>   <o>.  ,'(
         ))              ) )
        ( (     `-'     ( ('
         ))\\    ___,    ) ))
        ( ( \\   `--'  /( ( (
         ) ))|\\______/| )) )
        ( (( |        |( ((
         (,(,\\________/,,),)

    art

      puts madame
  end

  def draw_unicorn
    unicorn = <<-art
                               ,|
                              //|                              ,|
                           //,/                             -~ |
                          // / |                         _-~   /  ,
                        /'/ / /                       _-~   _/_-~ |
                       ( ( / /'                   _ -~     _-~ ,/'
                        \\~\\/'/|             __--~~__--\\ _-~  _/,
               ,,)))))));, \\/~-_     __--~~  --~~  __/~  _-~ /
             __))))))))))))));,>/\\   /        __--~~  \\-~~ _-~
           -\\(((((''''(((((((( >~\\/     --~~   __--~' _-~ ~|
  --==//////((''  .     `)))))), /     ___---~~  ~~\\~~__--~
          ))| @    ;-.     (((((/           __--~~~'~~/
            `|    /  )      )))/      ~~~~~__\\__---~~__--~~--_
              |   |   |       (/      ---~~~/__-----~~  ,;::'  \\      ,
              o_);   ;        /      ----~~/           \\,-~~~\\  |    /|
                   ;        (      ---~~/         `:::|      |;|   < >
                  |   _      `----~~~~'      /      `:|       \\;\\__//
            ______/\\/~    |                 /        /         ~---~
          /~;;.____/;;'  /          ___----(   `;;;/
         / //  _;______;'------~~~~~    |;;/\\    /
         //  | |                        /  |  \\;;,\\
       (<_  | ;                      /',/-----'  _>
         \\_| ||_                     //~;~~~~~~~~~
            `\\_|                   (,~~
                                    \\~\\
                                     ~~
      art
      puts unicorn
    end
end#Game class


game = Game.new
game.play
