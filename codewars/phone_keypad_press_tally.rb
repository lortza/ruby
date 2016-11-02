# ARRAY:  00-001-002-003-004-005-006-007-008-009-010-011-012-013-014-015
# LETTER: -A---B---C---D---E---F---G---H---I---J---K---L---M---N---O---P
# PRESS:  -1---2---3---1---2---3---1---2---3---1---2---3---1---2---3---1
# PRESSES: 2--22-222---3--33-333---4--44-444---5--55-555---6--66-666---7


#my solution
phrase = "k thx bai"
total = 14
def presses(phrase)
  alphabet = ("A".."Z").to_a
  presses_arrays = [one_press = [], two_press = [], three_press = []]

  while alphabet.length > 0
    presses_arrays.each do |array|
      array << alphabet.shift if alphabet.length > 0
    end#each
  end#while
  phrase_array = phrase.upcase.split().to_a
  phrase_array = phrase_array.map do |word|
    word.split("")
  end#map
  phrase_tally = []
  phrase_array.flatten.each do |letter|
    if presses_arrays[0].include?(letter)
      phrase_tally << 1
    elsif presses_arrays[1].include?(letter)
      phrase_tally << 2
    else
      phrase_tally << 3
    end #if
  end#each
  phrase_tally.inject { |mem, var|  mem += var}
end #def presses

p presses(phrase)

#other solution
def presses(phrase)
  groups = ["1", " 0", "ABC2", "DEF3", "GHI4", "JKL5", "MNO6", "TUV8", "PQRS7", "WXYZ9"]
  phrase.upcase.chars.map do |c|
    1 + groups.find { |grp| grp.include?(c) }.index(c)
  end.reduce(:+)
end