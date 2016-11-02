# Create a method to indicate whether or not a word is an anagram

#my solution
module AreAnagrams
  def self.are_anagrams?(string_a, string_b)
    non_alpha = [" ", "-", "'"]
    string_a = string_a.split("")
    string_b = string_b.split("")
    (non_alpha & string_a).empty? ? string_a = string_a : string_a = string_a.join(",").gsub!(/\W+/, '').split("")
    (non_alpha & string_b).empty? ? string_b = string_b : string_b = string_b.join(",").gsub!(/\W+/, '').split("")
    p string_a - string_b == []
    # raise NotImplementedError, 'Waiting to be implemented.'
  end
end

#other solution
module AreAnagrams
  def self.are_anagrams?(string_a, string_b)
    string_a.downcase.split("").sort == string_b.downcase.split("").sort
  end
end

## For testing purposes (do not submit uncommented):
puts AreAnagrams.are_anagrams?('aab-bcc', 'abcabc')