#insert commas at thousands 100000 => 100,000

# input = 1234567
# output = "1,234,567"
input = 123456
output = "123,456"

#my solution
def to_currency(number)
  number = number.to_s
  indices = []
  index = -4
  (number.length / 3).times do
    indices.push(index)
    index -=4
  end
  indices.each do |i|
    number = number.insert(i, ",")
  end
  number.slice!(0) if number[0] == ","
  number
end

#other solution
def to_currency(number)
  number.to_s.reverse.scan(/.{1,3}/).join(',').reverse
end


p to_currency(input)
p to_currency(input) == output ? "PASSES" : "FAILS"
