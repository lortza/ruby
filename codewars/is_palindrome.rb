# check if a word is a palindrome
str = "tacocat"

def is_palindrome(str)
  str == str.reverse
end #is_palindrome(str)

puts is_palindrome(str)


def is_palindrome1(str)
  letter_count = str.length
  half_letter_count = letter_count / 2
  word_as_array = str.split("")
  first_half_of_word = []
  half_letter_count.times do |x|
    first_half_of_word.push(word_as_array.shift)
    word_as_array.pop
  end
  first_half_of_word = first_half_of_word.join("")
  center_letter = word_as_array.join("")
  reconstructed_word = first_half_of_word + center_letter + first_half_of_word.reverse
  reconstructed_word == str
end #is_palindrome(str)



#### from revelry test
module Palindrome
  def self.is_palindrome?(string)
    raise NotImplementedError, "Not implemented" 
    string = string.gsub(/[^0-9a-z ]/i, '')
    string = string.gsub(/\s+/, "").downcase
    string.gsub(/\s+/, "") == str.gsub(/\s+/, "").reverse
  end
end


def is_pal3(string)
 string = string.gsub(/[^0-9a-z ]/i, '')
 string = string.gsub(/\s+/, "").downcase
 string.gsub(/\s+/, "") == string.gsub(/\s+/, "").reverse
end #is_pal3


p is_pal3('Noel sees Leon.')

