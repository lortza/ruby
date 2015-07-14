#create a deck 16 of cards in a hash

# anne's solition
@keys = []
numbers = [1, 2, 3, 4]
suits = ["A", "B", "C", "D"]
cards = []
deck = {}

x = 1
until x == 17
  @keys << x
   x += 1
end


numbers.each do |num|
  suits.each do |suit|
    cards << [suit, num]
  end #suit
end #num

@keys.each do |key|
  deck[key] = cards[key -1]
end #keys
print deck


#kevin's solution
numbers = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
suits = ["hearts", "diamonds", "spades", "clubs"]
cards = []
deck = {}

i = 1
numbers.each do |number|
 suits.each do |suit|
   deck[i] = [number, suit]
   i += 1
 end
end

puts "Hash"
print deck