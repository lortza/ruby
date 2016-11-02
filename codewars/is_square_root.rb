def is_square(x)
  Math.sqrt(x) == Math.sqrt(x).round(0)
end


p is_square(17)

p "passes test" if (is_square(17) == false && is_square(4) == true)

