# goal: move the first digit to the back of the line. Then leaving the first, move the second digit to the back of the line, then leaving the second, move the third, etc until you run out of digits. when all rotation combos are created, return the largest version of this number.


input = 12345
output = [12345, 23451, 24513, 24135, 24153], 24513

# my solution
def max_rot(n)
  output = [n]
  n = n.to_s.chars
  (0..((n.length)-2)).each do |i|
    x = n.delete_at(i)
    output << (n << x).join.to_i
  end
  output.max
end

#other solution
def max_rot(n)
    rot = [a = n.to_s]
    (0...a.split('').length).each do |i|
      rot << (a = a.split('')[0...i].join('') + a.split('')[i..-1].rotate.join(''))
    end
    return rot.map(&:to_i).max
end

p max_rot(input)
