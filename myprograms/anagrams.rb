# Write 2 methods to detect anagrams (words that == when letters are rearranged)

# The first method takes in 2 words and returns true/false if they're anagrams.
# ex: are_anagrams?('cinema', 'iceman') ==> true
# ex: are_anagrams?('cow', 'chicken') ==> false

w1 = 'cinema'
w2 = 'iceman'
w3 = 'robot'
w4 = 'William Shakespeare'
w5 = 'I am a weakish speller'

def are_anagrams?(w1, w2)
  w1.downcase.gsub(/\s+/, '').chars.sort == w2.downcase.gsub(/\s+/, '').chars.sort
end

p are_anagrams?(w4, w3) #==> false
p are_anagrams?(w4, w5) #==> true



# The second method takes an array of random words and returns an array of sub arrays of anagram sets
# ex: anagrams(['cinema', 'cow', 'iceman', 'restful', 'chicken', 'fluster']) ==> [['cinema', 'iceman'], ['restful', 'fluster']]

def anagrams(arr)
  paired = arr.group_by{ |e| e.downcase.gsub(/\s+/, "").chars.sort.join('') }
  paired.map {|_, v| v if v.length > 1 }.compact
end

input_arr = ['cinema', 'forty five', 'robot', 'tuna', 'television', 'over fifty', 'iceman', 'William Shakespeare', 'chicken', 'restful', 'I am a weakish speller', 'bicycle', 'fluster']
p anagrams(input_arr) #==> [["cinema", "iceman"], ["forty five", "over fifty"], ["William Shakespeare", "I am a weakish speller"], ["restful", "fluster"]]
