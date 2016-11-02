# my solution
def sum_two_smallest_numbers(numbers)
  numbers.sort!
  numbers[0] + numbers[1]
end

#other solution
def sum_two_smallest_numbers(numbers)
  numbers.sort[0..1].inject(:+)
end

p sum_two_smallest_numbers([12, 2, 18, 8, 22])