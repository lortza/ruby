# require 'pry'





# class Game
#   attr_accessor :bankroll
#   def initialize(bankroll)
#     @bankroll = bankroll
#   end

#   WHEEL_OPTIONS = ["0", "00", "Even", "Odd", "1 to 18", "19 to 36", "1st 12", "2nd 12", "3rd 12"] + (1..36).to_a

#   def calculate_payout(bet_amt, bet_number)
#     case bet_number
#     when 1..36 then bet_amt * 35
#     when "0" then bet_amt * 35
#     when "00" then bet_amt * 35
#     when "Even" then bet_amt * 1
#     when "Odd" then bet_amt * 1
#     when "1 to 18" then bet_amt * 1
#     when "19 to 36" then bet_amt * 1
#     when "1st 12" then bet_amt * 2
#     when "2nd 12" then bet_amt * 2
#     when "3rd 12" then bet_amt * 2
#     end#case
#   end

#   def distribute_winnings(bet_amt, bet_number)
#     payout = calculate_payout(bet_amt, bet_number)
#     puts "You win $#{payout}"
#     self.bankroll += payout
#     puts "You now have $#{bankroll}"
#   end #distribute_winnings

#   def deduct_loss(bet)
#     puts "You lose $#{bet}"
#     self.bankroll -= bet
#     puts "You now have $#{bankroll}"
#   end #deduct_loss

#   def spin(bet_amt, bet_number)
#     rolled_number = WHEEL_OPTIONS.sample
#     puts "You bet on #{bet_number} and rolled a #{rolled_number}"
#     if rolled_number == bet_number
#       distribute_winnings(bet_amt, bet_number)
#     else
#       deduct_loss(bet_amt)
#     end
#   end#spin

# end #Game

# # game = Game.new(100)

# # p game.spin(10,"Odd")
# # p game.spin(10,2)
# # p game.spin(10,1)


# # the original Animal class method
# class Animal
#   attr_accessor :name, :num_legs
#   def initialize(name, num_legs)
#     @name = name
#     @num_legs = num_legs
#   end

#   def say_name
#     puts "Hi my name is #{self.name}"
#   end

#   def dancy_pants
#     puts "i dance with my #{self.num_legs} legs"
#   end
# end

# # define a Penguin class
# class Penguin < Animal
#   attr_accessor :height, :flighted
#   def initialize(name, height)
#     super(name, num_legs = 2)
#     @height = height
#     @flighted = false
#   end

# end

# # create a new instance of the Penguin class
# penguin = Penguin.new("paul", "1.75 feet")

# # access the say_name method and attributes from Animal
# penguin.say_name #=> "Hi my name is paul"
# penguin.dancy_pants #=> "i dance with my 2 legs"

# # access own attributes
# p "height: #{penguin.height}" #=> "1.75 feet"
# p "flighted: #{penguin.flighted}" #=> false (default for class)


# # define a Emperor Penguin class
# class Emperor < Penguin
#   def initialize(name)
#     super(name, height = "3.5 feet")
#   end
# end

# # create a new instance of the Emperor class
# emperor = Emperor.new("Jules");

# # access the say_name method from Animal
# emperor.say_name #=> "Hi my name is Jules"
# emperor.dancy_pants #=> "i dance with my 2 legs"

# # access attributes from Penguin
# p "legs: #{emperor.num_legs}" #=> 2 (default for class)
# p "flighted: #{emperor.flighted}" #=> false

# # access local attributes
# p "height: #{emperor.height}" #=> "3.5 feet" (default for class)
class Cipher

  ALPHABET = ('a'..'z').to_a

  def processor(message, offset, adjusted_index_proc)
    output = []
    message.chars.each do |letter|
      new_index = adjusted_index_proc.call(letter)
      output << ALPHABET[new_index]
    end
    output.join()
  end

  def encode(message, offset)
    proc = Proc.new { |letter| ALPHABET.index(letter) + offset }
    processor(message, offset, proc)
  end

  def decode(message, offset)
    proc = Proc.new { |letter| ALPHABET.index(letter) - offset }
    processor(message, offset, proc)
  end
end

cipher = Cipher.new

p cipher.encode('ilikekitties', 3)
#> lolnhnlwwlhv

p cipher.decode('lolnhnlwwlhv', 3)
#> ilikekitties
