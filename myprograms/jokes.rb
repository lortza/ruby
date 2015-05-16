title = "Welcome to Super Awesome Computer Joke Game"
maxlength = title.length.to_i + 6
puts "\n"
puts "~" * maxlength
puts title.upcase.center(maxlength)
puts "~" * maxlength
puts "\n"

puts "Get ready for some HILARIOUS computer jokes!!!!!"
puts
puts "LOL!"
puts
sleep(2)
puts "Here we go!"
sleep(2)
puts

want_to_play = "yes"

def game(x)
    # hash with original data
    questions_answers = {"What did the spider do on the computer?" => "Made a WEBsite!", "What did the computer do at lunchtime?" => "It had a BYTE to eat!", "What does a baby computer call its father?" => "DATA!", 
    "What do you get when you cross a computer and a life guard?" => "A SCREENSAVER!", "Why did the computer die?" => "It had a TERMINAL illness!", "Why was the computer cold?" => "It had left its WINDOWS open!", "What do you get when you cross a computer with an elephant?" => "Lots of MEMORY!", "What do you get when you cross a dog and a computer?" => "A machine that has a bark worse than its BYTE!", "Why was the computer so angry?"  => "Because it had a CHIP on its shoulder!", "Why did the computer get glasses?"  => "To improve its webSIGHT!", "Why did the computer sneeze?" => "It had a VIRUS!", "Where do computers go to dance?" => "The DISKo!"}

    current_qna = questions_answers.to_a.sample #turns the hash into an array and chooses a random question to ask
    current_question = current_qna.first
    current_answer = current_qna.last

    puts current_question
    user_answer = gets.chomp.downcase

    if user_answer == current_answer.downcase
      puts "Yes!"
      puts "\n"
    else
      puts "\n"
      puts current_answer
    end
    puts "\n" * 3

end #ends method

def unicorn(x)
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


  def reaper(x)
    my_str = <<-art


               ...
             ;::::;
           ;::::; :;
         ;:::::'   :;
        ;:::::;     ;.
       ,:::::'  x  x ;           OOOO
       ::::::;       ;          OOOOOO
       ;:::::;       ;         OOOOOOOO
      ,;::::::;     ;'         / OOOOOOO
    ;:::::::::`. ,,,;.        /  / DOOOOOO
  .';:::::::::::::::::;,     /  /     DOOOO
 ,::::::;::::::;;;;::::;,   /  /        DOOO
;`::::::`'::::::;;;::::: ,#/  /          DOOO
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /              DOO
`:`:::::::`;:::::: ;::::::#/               DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O
  `:::::`::::::::;' /  / `:#
   ::::::`:::::;'  /  /   `#

    art
    puts my_str
    puts "Okay. Goodbye. Muhahahahahahaha!"
  end #reaper





# apply that method to a base number

base = 0

while  want_to_play.include? "y" do 
  game(base)
  sleep(2)
  puts "Want to hear another?  y | n"
        want_to_play = gets.chomp.downcase
        puts "\n" *2
  end
  until want_to_play == "n"
  end

if want_to_play == "n"
  while  want_to_play.include? "n" do 
    puts "Oh Bummer."
    sleep(1)
    puts "What if I show you..."
    sleep(2)
    unicorn(base)
    puts "THIS!"
    sleep(3)
    puts "How about now? Now do you want to hear another?  y | exit "
    want_to_play = gets.chomp.downcase
    puts "\n" *2

    end
    until want_to_play != "n"
    end
  
  if want_to_play == "y"
    puts "YES!"
    puts
    sleep(1)
    while  want_to_play.include? "y" do 
      game(base)
      sleep(2)
      puts "Want to hear another?  y | n"
            want_to_play = gets.chomp.downcase
            puts "\n" *2
    end
    until want_to_play == "n"
    end

    if want_to_play == "n"
      reaper(base)
    end

  elsif want_to_play == "exit"
    reaper(base)
  end
end #ends if

