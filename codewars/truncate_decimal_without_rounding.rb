# truncate a decimal to 2 places without rounding

input = 32.8493
output = 32.84
input2 = 1.0155555555555555
output2 = 1.01

#my first crack at it
def two_decimal_places(number)
  holder = ["."]
  step1 = number.to_s.split(".")
  holder.unshift(step1[0])
  step2 = step1[1].chars
  2.times do
    holder << step2.shift
  end
  holder.join("").to_f
end

#my final entry
def two_decimal_places(number)
  Integer(number * 100) / Float(100)
end

#other's solution
def two_decimal_places(number)
  number.to_s.match(/^-?\d+\.\d{2}/)[0].to_f
end

p two_decimal_places(input)
