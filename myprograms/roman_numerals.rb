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


