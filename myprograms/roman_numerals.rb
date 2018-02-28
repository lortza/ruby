# Goal: convert integers to roman numerals, up to the number 1000
# Check numbers here: http://www.onlineconversion.com/roman_numerals_advanced.htm

@pairs = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def convert_to_roman(input)
  roman_output = ""
  current_integer = input
  @pairs.each do |int, roman|
    while current_integer >= int
      p "start: #{current_integer}: #{roman_output}"
      roman_output << roman
      current_integer -= int
      p "finish: #{current_integer}: #{roman_output}"
    end
  end
  "#{input}: #{roman_output}"
end


p convert_to_roman(2017)

# Use as test suite:
# p convert_to_roman(1) == 'I'
# p convert_to_roman(5) == 'V'
# p convert_to_roman(9) == 'IX'
# p convert_to_roman(10) == 'X'
# p convert_to_roman(20) == 'XX'
# p convert_to_roman(12) == 'XII'
# p convert_to_roman(24) == 'XXIV'
# p convert_to_roman(25) == 'XXV'
# p convert_to_roman(38) == 'XXXVIII'
# p convert_to_roman(49) == 'XLIX'
# p convert_to_roman(89) == 'LXXXIX'


